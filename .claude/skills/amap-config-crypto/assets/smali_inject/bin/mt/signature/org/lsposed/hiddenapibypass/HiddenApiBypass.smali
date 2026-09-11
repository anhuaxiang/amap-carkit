.class public final Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;
.super Ljava/lang/Object;
.source "HiddenApiBypass.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "HiddenApiBypass"

.field private static final artFieldBias:J

.field private static final artFieldSize:J

.field private static final artMethodBias:J

.field private static final artMethodSize:J

.field private static final artOffset:J

.field private static final classOffset:J

.field private static final iFieldOffset:J

.field private static final methodOffset:J

.field private static final methodsOffset:J

.field private static final sFieldOffset:J

.field private static final signaturePrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 47
    nop

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    .line 66
    :try_start_8
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "getUnsafe"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    sput-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    .line 67
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    if-eqz v0, :cond_127

    .line 68
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$Executable;

    const-string v3, "artMethod"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodOffset:J

    .line 69
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$Executable;

    const-string v3, "declaringClass"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->classOffset:J

    .line 70
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$MethodHandle;

    const-string v3, "artFieldOrMethod"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artOffset:J

    .line 71
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$Class;

    const-string v3, "methods"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodsOffset:J

    .line 72
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$Class;

    const-string v3, "iFields"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->iFieldOffset:J

    .line 73
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$Class;

    const-string v3, "sFields"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->sFieldOffset:J

    .line 74
    const-class v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    const-string v1, "a"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 75
    .local v0, "mA":Ljava/lang/reflect/Method;
    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    const-string v3, "b"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 76
    .local v1, "mB":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 78
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 79
    .local v3, "mhA":Ljava/lang/invoke/MethodHandle;
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 80
    .local v4, "mhB":Ljava/lang/invoke/MethodHandle;
    sget-object v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v6, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artOffset:J

    invoke-virtual {v5, v3, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 81
    .local v5, "aAddr":J
    sget-object v7, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v8, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artOffset:J

    invoke-virtual {v7, v4, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 82
    .local v7, "bAddr":J
    sget-object v9, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    const-class v10, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    sget-wide v11, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodsOffset:J

    invoke-virtual {v9, v10, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 83
    .local v9, "aMethods":J
    sub-long v11, v7, v5

    sput-wide v11, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodSize:J

    .line 88
    sub-long v11, v5, v9

    sget-wide v13, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodSize:J

    sub-long/2addr v11, v13

    sput-wide v11, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodBias:J

    .line 89
    const-class v11, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    const-string v12, "i"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 90
    .local v11, "fI":Ljava/lang/reflect/Field;
    const-class v12, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    const-string v13, "j"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 91
    .local v12, "fJ":Ljava/lang/reflect/Field;
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    invoke-virtual {v12, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 94
    .local v2, "mhI":Ljava/lang/invoke/MethodHandle;
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v13

    .line 95
    .local v13, "mhJ":Ljava/lang/invoke/MethodHandle;
    sget-object v14, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    move-object v15, v0

    move-object/from16 v16, v1

    .end local v0  # "mA":Ljava/lang/reflect/Method;
    .end local v1  # "mB":Ljava/lang/reflect/Method;
    .local v15, "mA":Ljava/lang/reflect/Method;
    .local v16, "mB":Ljava/lang/reflect/Method;
    sget-wide v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artOffset:J

    invoke-virtual {v14, v2, v0, v1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 96
    .local v0, "iAddr":J
    sget-object v14, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .end local v2  # "mhI":Ljava/lang/invoke/MethodHandle;
    .end local v3  # "mhA":Ljava/lang/invoke/MethodHandle;
    .local v17, "mhA":Ljava/lang/invoke/MethodHandle;
    .local v18, "mhI":Ljava/lang/invoke/MethodHandle;
    sget-wide v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artOffset:J

    invoke-virtual {v14, v13, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 97
    .local v2, "jAddr":J
    sget-object v14, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    move-object/from16 v19, v4

    .end local v4  # "mhB":Ljava/lang/invoke/MethodHandle;
    .local v19, "mhB":Ljava/lang/invoke/MethodHandle;
    const-class v4, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    move-wide/from16 v20, v5

    .end local v5  # "aAddr":J
    .local v20, "aAddr":J
    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->iFieldOffset:J

    invoke-virtual {v14, v4, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 98
    .local v4, "iFields":J
    sub-long v22, v2, v0

    sput-wide v22, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artFieldSize:J

    .line 103
    sub-long v22, v0, v4

    sput-wide v22, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artFieldBias:J

    .line 107
    .end local v0  # "iAddr":J
    .end local v2  # "jAddr":J
    .end local v4  # "iFields":J
    .end local v7  # "bAddr":J
    .end local v9  # "aMethods":J
    .end local v11  # "fI":Ljava/lang/reflect/Field;
    .end local v12  # "fJ":Ljava/lang/reflect/Field;
    .end local v13  # "mhJ":Ljava/lang/invoke/MethodHandle;
    .end local v15  # "mA":Ljava/lang/reflect/Method;
    .end local v16  # "mB":Ljava/lang/reflect/Method;
    .end local v17  # "mhA":Ljava/lang/invoke/MethodHandle;
    .end local v18  # "mhI":Ljava/lang/invoke/MethodHandle;
    .end local v19  # "mhB":Ljava/lang/invoke/MethodHandle;
    .end local v20  # "aAddr":J
    nop

    .line 108
    return-void

    .line 67
    :cond_127
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_12d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_12d} :catch_12d

    .line 104
    :catch_12d
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "HiddenApiBypass"

    const-string v2, "Initialize error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addHiddenApiExemptions([Ljava/lang/String;)Z
    .registers 3
    .param p0, "signaturePrefixes"  # [Ljava/lang/String;

    .line 375
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 376
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 377
    .local v0, "strings":[Ljava/lang/String;
    sget-object v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 378
    invoke-static {v0}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static checkArgsForInvokeMethod([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .registers 6
    .param p1, "args"  # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 112
    .local p0, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    .line 113
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_8d

    .line 114
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 115
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1f

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_1f

    return v2

    .line 116
    :cond_1f
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_2c

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-nez v1, :cond_2c

    return v2

    .line 117
    :cond_2c
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_39

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Character;

    if-nez v1, :cond_39

    return v2

    .line 118
    :cond_39
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_46

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Boolean;

    if-nez v1, :cond_46

    return v2

    .line 119
    :cond_46
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_53

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Double;

    if-nez v1, :cond_53

    return v2

    .line 120
    :cond_53
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_60

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Float;

    if-nez v1, :cond_60

    return v2

    .line 121
    :cond_60
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6d

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_6d

    return v2

    .line 122
    :cond_6d
    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_89

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-nez v1, :cond_89

    return v2

    .line 123
    :cond_7a
    aget-object v1, p1, v0

    if-eqz v1, :cond_89

    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    return v2

    .line 113
    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 125
    .end local v0  # "i":I
    :cond_8d
    const/4 v0, 0x1

    return v0
.end method

.method public static clearHiddenApiExemptions()Z
    .registers 1

    .line 389
    sget-object v0, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 390
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs getDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 266
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 268
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Executable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Executable;

    .line 269
    .local v2, "method":Ljava/lang/reflect/Executable;
    instance-of v3, v2, Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_19

    goto :goto_8

    .line 270
    :cond_19
    invoke-virtual {v2}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 271
    .local v3, "expectedTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v3

    array-length v5, p1

    if-eq v4, v5, :cond_22

    goto :goto_8

    .line 272
    :cond_22
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    array-length v5, p1

    if-ge v4, v5, :cond_30

    .line 273
    aget-object v5, p1, v4

    aget-object v6, v3, v4

    if-eq v5, v6, :cond_2d

    goto :goto_8

    .line 272
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 275
    .end local v4  # "i":I
    :cond_30
    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/Constructor;

    return-object v1

    .line 277
    .end local v2  # "method":Ljava/lang/reflect/Executable;
    .end local v3  # "expectedTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_34
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "Cannot find matching constructor"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :goto_3c
    throw v1

    :goto_3d
    goto :goto_3c
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .param p1, "methodName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 240
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Executable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Executable;

    .line 243
    .local v2, "method":Ljava/lang/reflect/Executable;
    invoke-virtual {v2}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_8

    .line 244
    :cond_1f
    instance-of v3, v2, Ljava/lang/reflect/Method;

    if-nez v3, :cond_24

    goto :goto_8

    .line 245
    :cond_24
    invoke-virtual {v2}, Ljava/lang/reflect/Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 246
    .local v3, "expectedTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v3

    array-length v5, p2

    if-eq v4, v5, :cond_2d

    goto :goto_8

    .line 247
    :cond_2d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    array-length v5, p2

    if-ge v4, v5, :cond_3b

    .line 248
    aget-object v5, p2, v4

    aget-object v6, v3, v4

    if-eq v5, v6, :cond_38

    goto :goto_8

    .line 247
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 250
    .end local v4  # "i":I
    :cond_3b
    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/Method;

    return-object v1

    .line 252
    .end local v2  # "method":Ljava/lang/reflect/Executable;
    .end local v3  # "expectedTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3f
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "Cannot find matching method"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_48

    :goto_47
    throw v1

    :goto_48
    goto :goto_47
.end method

.method public static getDeclaredMethods(Ljava/lang/Class;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Executable;",
            ">;"
        }
    .end annotation

    .line 202
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Executable;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_6a

    .line 206
    :cond_12
    :try_start_12
    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    const-string v2, "a"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 207
    .local v1, "mA":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 208
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_29} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_29} :catch_66

    move-object v1, v2

    .line 211
    .local v1, "mh":Ljava/lang/invoke/MethodHandle;
    nop

    .line 212
    sget-object v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v3, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodsOffset:J

    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 213
    .local v9, "methods":J
    const-wide/16 v2, 0x0

    cmp-long v4, v9, v2

    if-nez v4, :cond_3a

    return-object v0

    .line 214
    :cond_3a
    sget-object v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    .line 216
    .local v2, "numMethods":I
    const/4 v3, 0x0

    move v11, v3

    .local v11, "i":I
    :goto_42
    if-ge v11, v2, :cond_65

    .line 217
    int-to-long v3, v11

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodSize:J

    mul-long v3, v3, v5

    add-long/2addr v3, v9

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodBias:J

    add-long v12, v3, v5

    .line 218
    .local v12, "method":J
    sget-object v3, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artOffset:J

    move-object v4, v1

    move-wide v7, v12

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 219
    const-class v3, Ljava/lang/reflect/Executable;

    invoke-static {v3, v1}, Ljava/lang/invoke/MethodHandles;->reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Executable;

    .line 223
    .local v3, "member":Ljava/lang/reflect/Executable;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v3  # "member":Ljava/lang/reflect/Executable;
    .end local v12  # "method":J
    add-int/lit8 v11, v11, 0x1

    goto :goto_42

    .line 225
    .end local v11  # "i":I
    :cond_65
    return-object v0

    .line 209
    .end local v1  # "mh":Ljava/lang/invoke/MethodHandle;
    .end local v2  # "numMethods":I
    .end local v9  # "methods":J
    :catch_66
    move-exception v1

    goto :goto_69

    :catch_68
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_69
    return-object v0

    .line 203
    .end local v1  # "e":Ljava/lang/ReflectiveOperationException;
    :cond_6a
    :goto_6a
    return-object v0
.end method

.method public static getInstanceFields(Ljava/lang/Class;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 289
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_67

    .line 293
    :cond_12
    :try_start_12
    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 294
    .local v1, "fI":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 295
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_26} :catch_65
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_26} :catch_63

    move-object v1, v2

    .line 298
    .local v1, "mh":Ljava/lang/invoke/MethodHandle;
    nop

    .line 299
    sget-object v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v3, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->iFieldOffset:J

    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 300
    .local v9, "fields":J
    const-wide/16 v2, 0x0

    cmp-long v4, v9, v2

    if-nez v4, :cond_37

    return-object v0

    .line 301
    :cond_37
    sget-object v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    .line 303
    .local v2, "numFields":I
    const/4 v3, 0x0

    move v11, v3

    .local v11, "i":I
    :goto_3f
    if-ge v11, v2, :cond_62

    .line 304
    int-to-long v3, v11

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artFieldSize:J

    mul-long v3, v3, v5

    add-long/2addr v3, v9

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artFieldBias:J

    add-long v12, v3, v5

    .line 305
    .local v12, "field":J
    sget-object v3, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artOffset:J

    move-object v4, v1

    move-wide v7, v12

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 306
    const-class v3, Ljava/lang/reflect/Field;

    invoke-static {v3, v1}, Ljava/lang/invoke/MethodHandles;->reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 309
    .local v3, "member":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v3  # "member":Ljava/lang/reflect/Field;
    .end local v12  # "field":J
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    .line 311
    .end local v11  # "i":I
    :cond_62
    return-object v0

    .line 296
    .end local v1  # "mh":Ljava/lang/invoke/MethodHandle;
    .end local v2  # "numFields":I
    .end local v9  # "fields":J
    :catch_63
    move-exception v1

    goto :goto_66

    :catch_65
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_66
    return-object v0

    .line 290
    .end local v1  # "e":Ljava/lang/ReflectiveOperationException;
    :cond_67
    :goto_67
    return-object v0
.end method

.method public static getStaticFields(Ljava/lang/Class;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 322
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_67

    .line 326
    :cond_12
    :try_start_12
    const-class v1, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$NeverCall;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 327
    .local v1, "fS":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 328
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_26} :catch_65
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_26} :catch_63

    move-object v1, v2

    .line 331
    .local v1, "mh":Ljava/lang/invoke/MethodHandle;
    nop

    .line 332
    sget-object v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v3, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->sFieldOffset:J

    invoke-virtual {v2, p0, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 333
    .local v9, "fields":J
    const-wide/16 v2, 0x0

    cmp-long v4, v9, v2

    if-nez v4, :cond_37

    return-object v0

    .line 334
    :cond_37
    sget-object v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v2, v9, v10}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    .line 336
    .local v2, "numFields":I
    const/4 v3, 0x0

    move v11, v3

    .local v11, "i":I
    :goto_3f
    if-ge v11, v2, :cond_62

    .line 337
    int-to-long v3, v11

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artFieldSize:J

    mul-long v3, v3, v5

    add-long/2addr v3, v9

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artFieldBias:J

    add-long v12, v3, v5

    .line 338
    .local v12, "field":J
    sget-object v3, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artOffset:J

    move-object v4, v1

    move-wide v7, v12

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 339
    const-class v3, Ljava/lang/reflect/Field;

    invoke-static {v3, v1}, Ljava/lang/invoke/MethodHandles;->reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 342
    .local v3, "member":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v3  # "member":Ljava/lang/reflect/Field;
    .end local v12  # "field":J
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    .line 344
    .end local v11  # "i":I
    :cond_62
    return-object v0

    .line 329
    .end local v1  # "mh":Ljava/lang/invoke/MethodHandle;
    .end local v2  # "numFields":I
    .end local v9  # "fields":J
    :catch_63
    move-exception v1

    goto :goto_66

    :catch_65
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_66
    return-object v0

    .line 323
    .end local v1  # "e":Ljava/lang/ReflectiveOperationException;
    :cond_67
    :goto_67
    return-object v0
.end method

.method public static varargs invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .param p1, "thiz"  # Ljava/lang/Object;
    .param p2, "methodName"  # Ljava/lang/String;
    .param p3, "args"  # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 171
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eqz v0, :cond_15

    invoke-virtual/range {p0 .. p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_15

    .line 172
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "this object is not an instance of the given class"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_15
    :goto_15
    const-class v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$InvokeStub;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "invoke"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 175
    .local v2, "stub":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 176
    sget-object v3, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v4, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodsOffset:J

    move-object/from16 v12, p0

    invoke-virtual {v3, v12, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    .line 177
    .local v3, "methods":J
    const-wide/16 v5, 0x0

    const-string v13, "Cannot find matching method"

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7d

    .line 178
    sget-object v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v5, v3, v4}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v5

    .line 180
    .local v5, "numMethods":I
    const/4 v6, 0x0

    move v14, v6

    .local v14, "i":I
    :goto_42
    if-ge v14, v5, :cond_75

    .line 181
    int-to-long v6, v14

    sget-wide v8, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodSize:J

    mul-long v6, v6, v8

    add-long/2addr v6, v3

    sget-wide v8, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodBias:J

    add-long v15, v6, v8

    .line 182
    .local v15, "method":J
    sget-object v6, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v8, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodOffset:J

    move-object v7, v2

    move-wide v10, v15

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 185
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 186
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 187
    .local v6, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v6, v1}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->checkArgsForInvokeMethod([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 188
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 180
    .end local v6  # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v15  # "method":J
    :cond_72
    add-int/lit8 v14, v14, 0x1

    goto :goto_42

    :cond_75
    move-object/from16 v7, p2

    .line 191
    .end local v14  # "i":I
    new-instance v6, Ljava/lang/NoSuchMethodException;

    invoke-direct {v6, v13}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 177
    .end local v5  # "numMethods":I
    :cond_7d
    move-object/from16 v7, p2

    new-instance v5, Ljava/lang/NoSuchMethodException;

    invoke-direct {v5, v13}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :goto_85
    throw v5

    :goto_86
    goto :goto_85
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .param p1, "initargs"  # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 137
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$InvokeStub;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "invoke"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 138
    .local v2, "stub":Ljava/lang/reflect/Method;
    const-class v4, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$InvokeStub;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, [Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 139
    .local v4, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 140
    sget-object v3, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v5, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodsOffset:J

    invoke-virtual {v3, v0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 141
    .local v5, "methods":J
    const-wide/16 v7, 0x0

    const-string v3, "Cannot find matching constructor"

    cmp-long v9, v5, v7

    if-eqz v9, :cond_86

    .line 142
    sget-object v7, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v7, v5, v6}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v14

    .line 144
    .local v14, "numMethods":I
    const/4 v7, 0x0

    move v15, v7

    .local v15, "i":I
    :goto_3b
    if-ge v15, v14, :cond_80

    .line 145
    int-to-long v7, v15

    sget-wide v9, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodSize:J

    mul-long v7, v7, v9

    add-long/2addr v7, v5

    sget-wide v9, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->artMethodBias:J

    add-long v16, v7, v9

    .line 146
    .local v16, "method":J
    sget-object v7, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v9, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodOffset:J

    move-object v8, v2

    move-wide/from16 v11, v16

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 149
    const-string v7, "<init>"

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 150
    sget-object v8, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v10, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->methodOffset:J

    move-object v9, v4

    move-wide/from16 v12, v16

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 151
    sget-object v7, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->unsafe:Lsun/misc/Unsafe;

    sget-wide v8, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->classOffset:J

    invoke-virtual {v7, v4, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 152
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 153
    .local v7, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v7, v1}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->checkArgsForInvokeMethod([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 144
    .end local v7  # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v16  # "method":J
    :cond_7d
    add-int/lit8 v15, v15, 0x1

    goto :goto_3b

    .line 157
    .end local v15  # "i":I
    :cond_80
    new-instance v7, Ljava/lang/NoSuchMethodException;

    invoke-direct {v7, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    .end local v14  # "numMethods":I
    :cond_86
    new-instance v7, Ljava/lang/NoSuchMethodException;

    invoke-direct {v7, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_8d

    :goto_8c
    throw v7

    :goto_8d
    goto :goto_8c
.end method

.method public static varargs setHiddenApiExemptions([Ljava/lang/String;)Z
    .registers 7
    .param p0, "signaturePrefixes"  # [Ljava/lang/String;

    .line 357
    const-string v0, "setHiddenApiExemptions"

    const/4 v1, 0x0

    :try_start_3
    const-class v2, Ldalvik/system/VMRuntime;

    const-string v3, "getRuntime"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 358
    .local v2, "runtime":Ljava/lang/Object;
    const-class v3, Ldalvik/system/VMRuntime;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v3, v2, v0, v5}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    .line 359
    return v4

    .line 360
    .end local v2  # "runtime":Ljava/lang/Object;
    :catchall_19
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "HiddenApiBypass"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    return v1
.end method
