.class public Lbin/mt/signature/KillerApplication;
.super Landroid/app/Application;
.source "KillerApplication.java"


# static fields
.field public static final URL:Ljava/lang/String; = "https://github.com/L-JINBIN/ApkSignatureKillerEx"

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    invoke-static {}, Lbin/mt/signature/KillerApplication;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "MIICXTCCAcagAwIBAgIETAMnKDANBgkqhkiG9w0BAQUFADByMQswCQYDVQQGEwJj\nbjEQMA4GA1UEBxMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzERMA8GA1UEChMI\nYXV0b25hdmkxGjAYBgNVBAsTEW1vYmlsZSBkZXBhcnRtZW50MRAwDgYDVQQDEwdt\naW5pbWFwMCAXDTEwMDUzMTAzMDQwOFoYDzIwNjUwMzAzMDMwNDA4WjByMQswCQYD\nVQQGEwJjbjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzERMA8G\nA1UEChMIYXV0b25hdmkxGjAYBgNVBAsTEW1vYmlsZSBkZXBhcnRtZW50MRAwDgYD\nVQQDEwdtaW5pbWFwMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCsJFya9LrT\nLtAH57peo1wD4m6eMT5Ap28+V5+o5hLCimPpB4ay3pzDcs6HxV5Q4vXm7EYzZuCI\ndzykjffVafAlXIRJdtNwCq2/ByMGQjvzI2fwfrUlCpC6C9VteuoYUDa1GAkGitcz\n+ywcLO8Pl5AJ1o3nPqEA5s2AAv6qAme0lwIDAQABMA0GCSqGSIb3DQEBAQUAA4GB\nAKUgZsDt+8nuWl/0yv85nbEadBsxVC1uacvP7wNZdniiVLQQKjxC++KQOvQy9vj9\n3K2HBP4ulSw5tbv6yJIBnzLGe9vQgfQMXWNEN/Hm6+J9dnxiG5VSTIB7DRMYUY9y\nHEYQO4Mci7zvG3GSxtbOvhyDxvWqBGrSjbxvAThakGAc\n"

    .line 46
    .local v1, "signatureData":Ljava/lang/String;
    invoke-static {v0, v1}, Lbin/mt/signature/KillerApplication;->killPM(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbin/mt/signature/KillerApplication;->killOpen(Ljava/lang/String;)V

    .line 47
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v1  # "signatureData":Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 220
    sget-object v0, Lbin/mt/signature/KillerApplication;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lbin/mt/signature/KillerApplication;->a:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "com.autonavi.amapauto"

    goto :goto_6
.end method

.method private static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "fieldName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 113
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 114
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_8} :catch_9

    .line 115
    return-object v1

    .line 116
    .end local v1  # "field":Ljava/lang/reflect/Field;
    :catch_9
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :goto_a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 119
    if-eqz p0, :cond_23

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 123
    :try_start_18
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 124
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 125
    return-object v2

    .line 126
    .end local v2  # "field":Ljava/lang/reflect/Field;
    :catch_20
    move-exception v2

    .line 127
    goto :goto_a

    .line 120
    :cond_22
    nop

    .line 129
    :cond_23
    goto :goto_25

    :goto_24
    throw v1

    :goto_25
    goto :goto_24
.end method

.method private static getApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "packageName"  # Ljava/lang/String;

    .line 182
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/self/maps"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_3a

    .line 184
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_c
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 185
    const-string v1, "\\s+"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "arr":[Ljava/lang/String;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    .line 187
    .local v3, "path":Ljava/lang/String;
    invoke-static {p0, v3}, Lbin/mt/signature/KillerApplication;->isApkPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_30

    if-eqz v4, :cond_29

    .line 188
    nop

    .line 192
    :try_start_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 188
    return-object v3

    .line 190
    .end local v1  # "arr":[Ljava/lang/String;
    .end local v3  # "path":Ljava/lang/String;
    :cond_29
    goto :goto_c

    .line 191
    :cond_2a
    nop

    .line 192
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_3a

    .line 191
    const/4 v1, 0x0

    return-object v1

    .line 182
    .end local v2  # "line":Ljava/lang/String;
    :catchall_30
    move-exception v1

    :try_start_31
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v2

    :try_start_36
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0  # "packageName":Ljava/lang/String;
    :goto_39
    throw v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 192
    .end local v0  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "packageName":Ljava/lang/String;
    :catch_3a
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_42

    :goto_41
    throw v1

    :goto_42
    goto :goto_41
.end method

.method private static getCurrentPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lbin/mt/signature/KillerApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_20

    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, "com.autonavi.amapauto"

    goto :goto_1c

    :catch_20
    move-exception v0

    const-string v0, "com.autonavi.amapauto"

    return-object v0
.end method

.method private static getDataFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "packageName"  # Ljava/lang/String;

    .line 171
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "username":Ljava/lang/String;
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 173
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 175
    return-object v1

    .line 178
    .end local v1  # "file":Ljava/io/File;
    :cond_39
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static native hookApkPath(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static isApkPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "path"  # Ljava/lang/String;

    .line 198
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_be

    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_be

    .line 201
    :cond_13
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "splitStr":[Ljava/lang/String;
    array-length v3, v0

    .line 203
    .local v3, "splitCount":I
    const-string v5, "base.apk"

    const-string v6, "mnt"

    const-string v7, "data"

    const/4 v8, 0x4

    const-string v9, "app"

    if-eq v3, v8, :cond_73

    const/4 v10, 0x5

    if-ne v3, v10, :cond_2d

    goto :goto_73

    .line 210
    :cond_2d
    const/4 v11, 0x3

    if-ne v3, v11, :cond_48

    .line 211
    aget-object v4, v0, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    aget-object v1, v0, v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 212
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 214
    :cond_48
    if-ne v3, v4, :cond_bd

    .line 215
    aget-object v4, v0, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    aget-object v1, v0, v1

    const-string v4, "expand"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    aget-object v1, v0, v11

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    aget-object v1, v0, v10

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 216
    aget-object v1, v0, v8

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 204
    :cond_73
    :goto_73
    aget-object v4, v0, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    aget-object v4, v0, v1

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v0, v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 205
    add-int/lit8 v1, v3, -0x2

    aget-object v1, v0, v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 207
    :cond_96
    aget-object v4, v0, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    aget-object v1, v0, v1

    const-string v4, "asec"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    add-int/lit8 v1, v3, -0x1

    aget-object v1, v0, v1

    const-string v4, "pkg.apk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 208
    add-int/lit8 v1, v3, -0x2

    aget-object v1, v0, v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 219
    :cond_bd
    return v2

    .line 199
    .end local v0  # "splitStr":[Ljava/lang/String;
    .end local v3  # "splitCount":I
    :cond_be
    :goto_be
    return v2
.end method

.method private static killOpen(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private static killPM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "signatureData"  # Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/pm/Signature;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>([B)V

    .line 57
    .local v0, "fakeSignature":Landroid/content/pm/Signature;
    sget-object v2, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    .local v2, "originalCreator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Lbin/mt/signature/KillerApplication$1;

    invoke-direct {v3, v2, p0, v0}, Lbin/mt/signature/KillerApplication$1;-><init>(Landroid/os/Parcelable$Creator;Ljava/lang/String;Landroid/content/pm/Signature;)V

    .line 84
    .local v3, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<Landroid/content/pm/PackageInfo;>;"
    :try_start_11
    const-class v4, Landroid/content/pm/PackageInfo;

    const-string v5, "CREATOR"

    invoke-static {v4, v5}, Lbin/mt/signature/KillerApplication;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_78

    .line 87
    nop

    .line 88
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_31

    .line 89
    const-string v4, "Landroid/content/pm"

    const-string v6, "Landroid/app"

    const-string v7, "Landroid/os/Parcel;"

    filled-new-array {v7, v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbin/mt/signature/org/lsposed/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z

    .line 92
    :cond_31
    :try_start_31
    const-class v4, Landroid/content/pm/PackageManager;

    const-string v6, "sPackageInfoCache"

    invoke-static {v4, v6}, Lbin/mt/signature/KillerApplication;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 94
    .local v4, "cache":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "clear"

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_50

    .line 96
    nop

    .end local v4  # "cache":Ljava/lang/Object;
    goto :goto_51

    .line 95
    :catchall_50
    move-exception v1

    .line 98
    :goto_51
    :try_start_51
    const-class v1, Landroid/os/Parcel;

    const-string v4, "mCreators"

    invoke-static {v1, v4}, Lbin/mt/signature/KillerApplication;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 100
    .local v1, "mCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_63

    .line 102
    .end local v1  # "mCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto :goto_64

    .line 101
    :catchall_63
    move-exception v1

    .line 104
    :goto_64
    :try_start_64
    const-class v1, Landroid/os/Parcel;

    const-string v4, "sPairedCreators"

    invoke-static {v1, v4}, Lbin/mt/signature/KillerApplication;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 106
    .local v1, "sPairedCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_75
    .catchall {:try_start_64 .. :try_end_75} :catchall_76

    .line 108
    .end local v1  # "sPairedCreators":Ljava/util/Map;, "Ljava/util/Map<**>;"
    goto :goto_77

    .line 107
    :catchall_76
    move-exception v1

    .line 109
    :goto_77
    return-void

    .line 85
    :catch_78
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lbin/mt/signature/KillerApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbin/mt/signature/KillerApplication;->a:Ljava/lang/String;

    const-string v1, "MIICXTCCAcagAwIBAgIETAMnKDANBgkqhkiG9w0BAQUFADByMQswCQYDVQQGEwJj\nbjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzERMA8GA1UEChMI\nYXV0b25hdmkxGjAYBgNVBAsTEW1vYmlsZSBkZXBhcnRtZW50MRAwDgYDVQQDEwdt\naW5pbWFwMCAXDTEwMDUzMTAzMDQwOFoYDzIwNjUwMzAzMDMwNDA4WjByMQswCQYD\nVQQGEwJjbjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzERMA8G\nA1UEChMIYXV0b25hdmkxGjAYBgNVBAsTEW1vYmlsZSBkZXBhcnRtZW50MRAwDgYD\nVQQDEwdtaW5pbWFwMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCsJFya9LrT\nLtAH57peo1wD4m6eMT5Ap28+V5+o5hLCimPpB4ay3pzDcs6HxV5Q4vXm7EYzZuCI\ndzykjffVafAlXIRJdtNwCq2/ByMGQjvzI2fwfrUlCpC6C9VteuoYUDa1GAkGitcz\n+ywcLO8Pl5AJ1o3nPqEA5s2AAv6qAme0lwIDAQABMA0GCSqGSIb3DQEBBQUAA4GB\nAKUgZsDt+8nuWl/0yv85nbEadBsxVC1uacvP7wNZdniiVLQQKjxC++KQOvQy9vj9\n3K2HBP4ulSw5tbv6yJIBnzLGe9vQgfQMXWNEN/Hm6+J9dnxiG5VSTIB7DRMYUY9y\nHEYQO4Mci7zvG3GSxtbOvhyDxvWqBGrSjbxvAThakGAc\n"

    sget-object v2, Lbin/mt/signature/KillerApplication;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lbin/mt/signature/KillerApplication;->killPM(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lbin/mt/signature/KillerApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Lbin/mt/signature/KillerApplication;->killOpen(Ljava/lang/String;)V

    return-void
.end method
