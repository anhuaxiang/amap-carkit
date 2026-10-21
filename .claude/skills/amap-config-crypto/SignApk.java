// apksig 签名器：v1+v2 签名（v3 关闭），与原 toolbox 的 ApkSigner 一致。
// 用法: java -cp <apksig.jar> SignApk keystore storepass alias keypass in.apk out.apk
// 依赖 com.android.tools.build:apksig（apkmod.py 会自动下载到缓存并编译本文件）。
import com.android.apksig.ApkSigner;
import java.io.File;
import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.Collections;

public class SignApk {
    public static void main(String[] a) throws Exception {
        String ks = a[0], storepass = a[1], alias = a[2], keypass = a[3], in = a[4], out = a[5];
        KeyStore k = KeyStore.getInstance(KeyStore.getDefaultType());
        try (FileInputStream f = new FileInputStream(ks)) {
            k.load(f, storepass.toCharArray());
        }
        PrivateKey pk = (PrivateKey) k.getKey(alias, keypass.toCharArray());
        X509Certificate cert = (X509Certificate) k.getCertificate(alias);
        ApkSigner.SignerConfig sc = new ApkSigner.SignerConfig.Builder(
                alias, pk, Collections.singletonList(cert)).build();
        new ApkSigner.Builder(Collections.singletonList(sc))
                .setV1SigningEnabled(true)
                .setV2SigningEnabled(true)
                .setV3SigningEnabled(false)
                .setInputApk(new File(in))
                .setOutputApk(new File(out))
                .build().sign();
        System.err.println("[SignApk] v1+v2 signed -> " + out);
    }
}
