// dexlib2 dex 合并器：把 overlay.dex 的类合并进 base.dex，同名类以 overlay 为准（覆盖）。
// 用法: java -cp <smali jars> MergeDex base.dex overlay.dex out.dex <apiLevel>
// 依赖 com.android.tools.smali:smali-dexlib2（apkmod.py 会用缓存里的 smali jar 作 classpath 编译并运行）。
import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.immutable.ImmutableDexFile;
import com.android.tools.smali.dexlib2.writer.pool.DexPool;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MergeDex {
    public static void main(String[] args) throws Exception {
        Opcodes op = Opcodes.forApi(Integer.parseInt(args[3]));
        DexFile base = DexFileFactory.loadDexFile(new File(args[0]), op);
        DexFile overlay = DexFileFactory.loadDexFile(new File(args[1]), op);
        Set<String> overlayTypes = new HashSet<>();
        List<ClassDef> merged = new ArrayList<>();
        for (ClassDef c : overlay.getClasses()) {
            overlayTypes.add(c.getType());
            merged.add(c);
        }
        int replaced = 0;
        for (ClassDef c : base.getClasses()) {
            if (overlayTypes.contains(c.getType())) { replaced++; continue; }
            merged.add(c);
        }
        System.err.println("[MergeDex] overlay=" + overlayTypes.size()
                + " replaced=" + replaced + " total=" + merged.size());
        DexPool.writeTo(args[2], new ImmutableDexFile(op, merged));
    }
}
