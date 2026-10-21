.class public Lbin/mt/signature/HookApplication;
.super Lcom/autonavi/amapauto/app/MapApplicationProxy;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final GET_SIGNATURES:I

.field private appPkgName:Ljava/lang/String;

.field private baseObject:Ljava/lang/Object;

.field private signArray:[[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lbin/mt/signature/HookApplication;->GET_SIGNATURES:I

    const-string v0, "com.autonavi.amapauto"

    iput-object v0, p0, Lbin/mt/signature/HookApplication;->appPkgName:Ljava/lang/String;

    return-void
.end method

.method private initProxy(Landroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AQAAAmEwggJdMIIBxqADAgECAgRMAycoMA0GCSqGSIb3DQEBBQUAMHIxCzAJBgNVBAYTAmNuMRAwDgYDVQQIEwdiZWlqaW5nMRAwDgYDVQQHEwdiZWlqaW5nMREwDwYDVQQKEwhhdXRvbmF2aTEaMBgGA1UECxMRbW9iaWxlIGRlcGFydG1lbnQxEDAOBgNVBAMTB21pbmltYXAwIBcNMTAwNTMxMDMwNDA4WhgPMjA2NTAzMDMwMzA0MDhaMHIxCzAJBgNVBAYTAmNuMRAwDgYDVQQIEwdiZWlqaW5nMRAwDgYDVQQHEwdiZWlqaW5nMREwDwYDVQQKEwhhdXRvbmF2aTEaMBgGA1UECxMRbW9iaWxlIGRlcGFydG1lbnQxEDAOBgNVBAMTB21pbmltYXAwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAKwkXJr0utMu0Afnul6jXAPibp4xPkCnbz5Xn6jmEsKKY+kHhrLenMNyzofFXlDi9ebsRjNm4Ih3PKSN99Vp8CVchEl203AKrb8HIwZCO/MjZ/B+tSUKkLoL1W166hhQNrUYCQaK1zP7LBws7w+XkAnWjec+oQDmzYAC/qoCZ7SXAgMBAAEwDQYJKoZIhvcNAQEFBQADgYEApSBmwO37ye5aX/TK/zmdsRp0GzFULW5py8/vA1l2eKJUtBAqPEL74pA69DL2+P3crYcE/i6VLDm1u/rIkgGfMsZ729CB9AxdY0Q38ebr4n12fGIblVJMgHsNExhRj3IcRhA7gxyLvO8bcZLG1s6+HIPG9aoEatKNvG8BOFqQYBw="

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    new-array v1, v1, [[B

    iput-object v1, p0, Lbin/mt/signature/HookApplication;->signArray:[[B

    :goto_1c
    iget-object v1, p0, Lbin/mt/signature/HookApplication;->signArray:[[B

    array-length v1, v1

    if-lt v0, v1, :cond_7d

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbin/mt/signature/HookApplication;->appPkgName:Ljava/lang/String;

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "sPackageManager"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lbin/mt/signature/HookApplication;->baseObject:Ljava/lang/Object;

    const-string v2, "android.content.pm.IPackageManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mPM"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7c
    return-void

    :cond_7d
    iget-object v1, p0, Lbin/mt/signature/HookApplication;->signArray:[[B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v3, v3, [B

    aput-object v3, v1, v0

    iget-object v1, p0, Lbin/mt/signature/HookApplication;->signArray:[[B

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8e} :catch_91

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-direct {p0, p1}, Lbin/mt/signature/HookApplication;->initProxy(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v7, 0x74

    const/16 v6, 0x67

    const/4 v1, 0x0

    const/16 v5, 0x61

    const/16 v4, 0x65

    const/16 v0, 0xe

    new-array v0, v0, [B

    int-to-byte v2, v6

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    int-to-byte v3, v7

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x50

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x4

    int-to-byte v3, v5

    aput-byte v3, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0x63

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x6b

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x7

    int-to-byte v3, v5

    aput-byte v3, v0, v2

    const/16 v2, 0x8

    int-to-byte v3, v6

    aput-byte v3, v0, v2

    const/16 v2, 0x9

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x49

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0x6e

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x66

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x6f

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lbin/mt/signature/HookApplication;->signArray:[[B

    if-eqz v0, :cond_af

    iget-object v0, p0, Lbin/mt/signature/HookApplication;->baseObject:Ljava/lang/Object;

    if-eqz v0, :cond_af

    aget-object v0, p3, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_af

    iget-object v0, p0, Lbin/mt/signature/HookApplication;->appPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lbin/mt/signature/HookApplication;->baseObject:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lbin/mt/signature/HookApplication;->signArray:[[B

    array-length v2, v2

    new-array v2, v2, [Landroid/content/pm/Signature;

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_99
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lt v1, v2, :cond_9f

    :goto_9e
    return-object v0

    :cond_9f
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Landroid/content/pm/Signature;

    iget-object v4, p0, Lbin/mt/signature/HookApplication;->signArray:[[B

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    :cond_af
    const/16 v0, 0x14

    new-array v0, v0, [B

    int-to-byte v2, v6

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    int-to-byte v3, v7

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x49

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x6e

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0x73

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x6

    int-to-byte v3, v7

    aput-byte v3, v0, v2

    const/4 v2, 0x7

    int-to-byte v3, v5

    aput-byte v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x6c

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x6c

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x53

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0x6f

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x75

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x72

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xe

    const/16 v3, 0x63

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xf

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    const/16 v2, 0x10

    const/16 v3, 0x49

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0x11

    const/16 v3, 0x6e

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0x12

    const/16 v3, 0x66

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0x13

    const/16 v3, 0x6f

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    aget-object v0, p3, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbin/mt/signature/HookApplication;->appPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    new-instance v2, Landroid/content/pm/InstallSourceInfo;

    const-string v3, "com.android.vending"

    const/4 v0, 0x0

    check-cast v0, Landroid/content/pm/SigningInfo;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const-string v4, "com.android.vending"

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_9e

    :cond_159
    const/16 v0, 0x17

    new-array v0, v0, [B

    int-to-byte v2, v6

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    int-to-byte v2, v7

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x49

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x6e

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x73

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    int-to-byte v2, v7

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    int-to-byte v2, v5

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x6c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x6c

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x72

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    int-to-byte v2, v5

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x63

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x6b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    int-to-byte v2, v5

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    int-to-byte v2, v6

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x4e

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    int-to-byte v2, v5

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x6d

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    const-string v0, "com.android.vending"

    goto/16 :goto_9e

    :cond_1f0
    iget-object v0, p0, Lbin/mt/signature/HookApplication;->baseObject:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9e
.end method
