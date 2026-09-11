.class public abstract Lq3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const-string v0, "com.autonavi.amapauto.app.MapApplicationProxy"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "mPM"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_25

    .line 32
    :catch_1f
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    const-string p0, ""

    .line 38
    :goto_25
    const-string v1, "android.content.pm.IPackageManager$Stub$Proxy"

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_37

    .line 46
    const-string v1, "com.zte.ZTESecurity.ZTEPackageManager"

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_36

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    const/4 v0, 0x0

    .line 56
    :cond_37
    :goto_37
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 15
    const-string v0, "com.autonavi.amapauto"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lq3;->c(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    invoke-static {p0}, Lq3;->a(Landroid/content/Context;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1a

    .line 13
    invoke-static {p0}, Lq3;->b(Landroid/content/Context;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1a

    .line 19
    invoke-static {p0}, Lcom/autonavi/common/tool/b;->e(Landroid/content/Context;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1a

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p0, 0x1

    .line 28
    :goto_1b
    return p0
.end method
