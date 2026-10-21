.class public Lcom/autonavi/amapauto/app/MapApplicationProxy;
.super Lbin/mt/signature/KillerApplication;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lbin/mt/signature/KillerApplication;-><init>()V

    .line 4
    const-string v0, "DexTrace.MapApplicationProxy"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->a:Ljava/lang/String;

    .line 8
    const-string v0, "com.autonavi.amapauto.MapApplication"

    .line 10
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->b:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c:[Ljava/lang/String;

    .line 17
    const-string v0, "apply_version"

    .line 19
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->e:Ljava/lang/String;

    .line 21
    const-string v0, "attachBaseContext"

    .line 23
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->f:Ljava/lang/String;

    .line 25
    const-string v0, "onCreate"

    .line 27
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->g:Ljava/lang/String;

    .line 29
    const-string v0, "onConfigurationChanged"

    .line 31
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->h:Ljava/lang/String;

    .line 33
    const-string v0, "onTerminate"

    .line 35
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->i:Ljava/lang/String;

    .line 37
    const-string v0, "onLowMemory"

    .line 39
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->j:Ljava/lang/String;

    .line 41
    const-string v0, "onTrimMemory"

    .line 43
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->k:Ljava/lang/String;

    .line 45
    const-string v0, "initAfterSoCorrupt"

    .line 47
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->l:Ljava/lang/String;

    .line 49
    const-string v0, "getClassLoader"

    .line 51
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->m:Ljava/lang/String;

    .line 53
    const-string v0, ":locationservice"

    .line 55
    iput-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->n:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static varargs c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    if-eqz v0, :cond_1a

    .line 7
    :try_start_6
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_14

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_14} :catch_15

    .line 21
    :cond_14
    return-object v1

    .line 22
    :catch_15
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_4

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v2, "Method "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string p1, " with parameters "

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string p1, " not found in "

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 4
    if-nez v0, :cond_26

    .line 6
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->b(Z)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 12
    const-string p1, "DexTrace.MapApplicationProxy"

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v1, "ensureDelegate  map app "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {p1, v0, v1}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 39
    :cond_26
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->e()Z

    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v2, "app scene "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const-string v2, "DexTrace.MapApplicationProxy"

    .line 27
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v0}, Laz;->l(Z)V

    .line 33
    invoke-static {p0}, Laz;->i(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d()V

    .line 39
    invoke-virtual {p0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->f()Z

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    if-nez v0, :cond_32

    .line 46
    invoke-virtual {p0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->h()Z

    .line 49
    move-result v0

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    const/4 v0, 0x0

    .line 52
    :goto_33
    :try_start_33
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->a(Z)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v3, "app is null  "

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v3, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 67
    const/4 v4, 0x1

    .line 68
    if-nez v3, :cond_47

    .line 70
    const/4 v3, 0x1

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    const/4 v3, 0x0

    .line 73
    :goto_48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    new-array v3, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, v0, v3}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 87
    const-string v3, "attachBaseContext"

    .line 89
    new-array v5, v4, [Ljava/lang/Class;

    .line 91
    const-class v6, Landroid/content/Context;

    .line 93
    aput-object v6, v5, v1

    .line 95
    invoke-static {v0, v3, v5}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    move-result-object v0

    .line 99
    iget-object v3, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 101
    new-array v4, v4, [Ljava/lang/Object;

    .line 103
    aput-object p1, v4, v1

    .line 105
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string p1, "attach base context end"

    .line 110
    new-array v0, v1, [Ljava/lang/Object;

    .line 112
    invoke-static {v2, p1, v0}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_33 .. :try_end_72} :catchall_73

    .line 115
    goto :goto_7e

    .line 116
    :catchall_73
    move-exception p1

    .line 117
    const-string v0, "call application method attachBaseContext failed"

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    invoke-static {v2, v0, p1, v1}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    :goto_7e
    return-void
.end method

.method public final b(Z)Ljava/lang/Object;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "com.autonavi.amapauto.MapApplication"

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    move-result-object v2

    .line 8
    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x2

    .line 13
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    const-class v4, Landroid/app/Application;

    .line 17
    aput-object v4, v3, v0

    .line 19
    const-class v4, Landroid/os/Bundle;

    .line 21
    const/4 v5, 0x1

    .line 22
    aput-object v4, v3, v5

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    move-result-object v1

    .line 28
    new-instance v3, Landroid/os/Bundle;

    .line 30
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string v4, "apply_version"

    .line 35
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    new-array p1, v2, [Ljava/lang/Object;

    .line 40
    aput-object p0, p1, v0

    .line 42
    aput-object v3, p1, v5

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p1
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    .line 48
    return-object p1

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    const-string v1, "create delegate failed"

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    const-string v2, "DexTrace.MapApplicationProxy"

    .line 56
    invoke-static {v2, v1, p1, v0}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 59
    const/4 p1, 0x0

    .line 60
    return-object p1
.end method

.method public final d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c:[Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ":locationservice"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v1, v0, v2

    .line 27
    return-void
.end method

.method public e()Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 5
    move-result-object v1

    .line 6
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_c

    .line 8
    and-int/lit8 v1, v1, 0x2

    .line 10
    if-eqz v1, :cond_c

    .line 12
    const/4 v0, 0x1

    .line 13
    :catch_c
    :cond_c
    return v0
.end method

.method public final f()Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c:[Ljava/lang/String;

    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_13

    .line 8
    aget-object v1, v2, v0

    .line 10
    invoke-virtual {p0, p0, v1}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->g(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_10

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 19
    goto :goto_2

    .line 20
    :cond_13
    :goto_13
    return v1
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    const-string v1, "activity"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/app/ActivityManager;

    .line 13
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_30

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_30

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 35
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 37
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_16

    .line 43
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 45
    if-ne v1, v0, :cond_16

    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 7
    if-eqz v1, :cond_3c

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_9
    const-string v3, "getClassLoader"

    .line 12
    new-array v4, v2, [Ljava/lang/Class;

    .line 14
    invoke-static {v1, v3, v4}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 20
    const/4 v4, 0x1

    .line 21
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    aput-object v0, v4, v2

    .line 25
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/ClassLoader;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    .line 31
    return-object v1

    .line 32
    :catchall_1f
    move-exception v1

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v4, "get class loader exception "

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    const-string v3, "DexTrace.MapApplicationProxy"

    .line 58
    invoke-static {v3, v1, v2}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_3c
    return-object v0
.end method

.method public final h()Z
    .registers 7

    .line 1
    invoke-static {p0}, Lra;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " loadAutonavi classloader before "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "clasl "

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->getClassLoader()Ljava/lang/ClassLoader;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const/4 v3, 0x0

    .line 42
    new-array v4, v3, [Ljava/lang/Object;

    .line 44
    const-string v5, "DexTrace.MapApplicationProxy"

    .line 46
    invoke-static {v5, v1, v4}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {p0}, Lma;->b(Landroid/content/Context;)Z

    .line 52
    move-result v1

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, " loadAutonavi classloader after "

    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 69
    move-result v0

    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->getClassLoader()Ljava/lang/ClassLoader;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    new-array v2, v3, [Ljava/lang/Object;

    .line 89
    invoke-static {v5, v0, v2}, Laz;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    iget-object v1, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 7
    const-string v2, "onConfigurationChanged"

    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    const-class v5, Landroid/content/res/Configuration;

    .line 14
    aput-object v5, v4, v0

    .line 16
    invoke-static {v1, v2, v4}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    aput-object p1, v3, v0

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1d

    .line 29
    goto :goto_2a

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    const-string v1, "call application method onConfigurationChanged failed"

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    const-string v2, "DexTrace.MapApplicationProxy"

    .line 37
    invoke-static {v2, v1, p1, v0}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    :goto_2a
    return-void
.end method

.method public onCreate()V
    .registers 7

    .line 1
    const-string v0, "call application method onCreate failed"

    .line 3
    const-string v1, "DexTrace.MapApplicationProxy"

    .line 5
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lfloatapp/AutoamapPluginManage;->load(Landroid/app/Application;)V

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_b
    iget-object v3, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 11
    const-string v4, "onCreate"

    .line 13
    new-array v5, v2, [Ljava/lang/Class;

    .line 15
    invoke-static {v3, v4, v5}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 21
    new-array v5, v2, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1c} :catch_69
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_1c} :catch_56
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 26
    goto :goto_72

    .line 27
    :catch_1d
    move-exception v3

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    invoke-static {v1, v0, v3, v2}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0xa

    .line 39
    :goto_29
    if-eqz v0, :cond_38

    .line 41
    if-lez v1, :cond_38

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_34

    .line 49
    goto :goto_38

    .line 50
    :cond_34
    add-int/lit8 v1, v1, -0x1

    .line 52
    move-object v0, v2

    .line 53
    goto :goto_29

    .line 54
    :cond_38
    :goto_38
    if-eqz v0, :cond_47

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    .line 61
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    throw v1

    .line 69
    :cond_47
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    const-string v1, "Exception"

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    .line 80
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v1

    .line 84
    :catch_56
    move-exception v3

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {v1, v0, v3, v2}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    .line 95
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    throw v0

    .line 103
    :catch_69
    move-exception v3

    .line 104
    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    invoke-static {v1, v0, v3, v2}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    :goto_72
    return-void
.end method

.method public onLowMemory()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    iget-object v1, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 7
    const-string v2, "onLowMemory"

    .line 9
    new-array v3, v0, [Ljava/lang/Class;

    .line 11
    invoke-static {v1, v2, v3}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 17
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_16

    .line 22
    goto :goto_23

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    const-string v2, "call application method onLowMemory failed"

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    const-string v3, "DexTrace.MapApplicationProxy"

    .line 30
    invoke-static {v3, v2, v1, v0}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_23
    return-void
.end method

.method public onTerminate()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    iget-object v1, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 7
    const-string v2, "onTerminate"

    .line 9
    new-array v3, v0, [Ljava/lang/Class;

    .line 11
    invoke-static {v1, v2, v3}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 17
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_16

    .line 22
    goto :goto_23

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    const-string v2, "call application method onTerminate failed"

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    const-string v3, "DexTrace.MapApplicationProxy"

    .line 30
    invoke-static {v3, v2, v1, v0}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_23
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    iget-object v1, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 7
    const-string v2, "onTrimMemory"

    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    aput-object v5, v4, v0

    .line 16
    invoke-static {v1, v2, v4}, Lcom/autonavi/amapauto/app/MapApplicationProxy;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/autonavi/amapauto/app/MapApplicationProxy;->d:Ljava/lang/Object;

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    aput-object p1, v3, v0

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_21

    .line 33
    goto :goto_2e

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    const-string v1, "call application method onTrimMemory failed"

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    const-string v2, "DexTrace.MapApplicationProxy"

    .line 41
    invoke-static {v2, v1, p1, v0}, Laz;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :goto_2e
    return-void
.end method
