.class public Lcom/autonavi/auto/remote/fill/UsbFillActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public a:Ld7;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "UsbFillActivity new loader: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-class v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Loader"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->b:I

    .line 7
    iput v0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->c:I

    .line 9
    iput v0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->d:I

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/auto/remote/fill/UsbFillActivity;III)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->h(III)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->j()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->o()V

    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->k()V

    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->i()V

    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)Ld7;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->r()V

    .line 4
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p1

    .line 6
    :catch_5
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public final h(III)V
    .registers 8

    .line 1
    iput p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->b:I

    .line 3
    iput p2, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->c:I

    .line 5
    iput p3, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->d:I

    .line 7
    invoke-static {}, Lzm;->d()Lzm;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "isNeedFrontMemory"

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 17
    move-result v0

    .line 18
    new-array v1, v2, [Ljava/lang/Object;

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v1, v2

    .line 27
    const-string v2, "UsbFillActivity"

    .line 29
    const-string v3, "isNeedFrontMemory ={?}"

    .line 31
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    if-eqz v0, :cond_31

    .line 36
    invoke-static {p0}, Lu50;->b(Landroid/app/Activity;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_38

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, p2, p3, v0}, Lcom/autonavi/common/tool/b;->b(IIILandroid/app/Application;)V

    .line 49
    goto :goto_38

    .line 50
    :cond_31
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1, p2, p3, v0}, Lcom/autonavi/common/tool/b;->b(IIILandroid/app/Application;)V

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public final i()V
    .registers 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/autonavi/common/tool/b;->R(Landroid/content/Context;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2d

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lxf0;->C(Landroid/content/Context;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_29

    .line 29
    const-string v0, "UsbFillActivity"

    .line 31
    const-string v1, "System.exit, onCreate !SystemUtils.isAppForeground"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/16 v0, 0x72

    .line 38
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 41
    return-void

    .line 42
    :cond_29
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->l()V

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->j()V

    .line 49
    :goto_30
    return-void
.end method

.method public final j()V
    .registers 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lq3;->d(Landroid/content/Context;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_36

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lxf0;->C(Landroid/content/Context;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2d

    .line 33
    const-string v0, "UsbFillActivity"

    .line 35
    const-string v1, "System.exit, doAfterTamperCrashFix !SystemUtils.isAppForeground"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/16 v0, 0x74

    .line 42
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 45
    return-void

    .line 46
    :cond_2d
    const/4 v0, 0x1

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, v1, v1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->h(III)V

    .line 51
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->o()V

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->q()V

    .line 58
    :goto_39
    return-void
.end method

.method public final k()V
    .registers 3

    .line 1
    new-instance v0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$f;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Landroid/os/Looper;)V

    .line 10
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$g;

    .line 12
    invoke-direct {v1, p0, v0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$g;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Landroid/os/Handler;)V

    .line 15
    const-string v0, "CrashModeFixThread"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 23
    return-void
.end method

.method public final l()V
    .registers 3

    .line 1
    new-instance v0, Lcom/autonavi/auto/remote/fill/UsbFillActivity$d;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$d;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Landroid/os/Looper;)V

    .line 10
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$e;

    .line 12
    invoke-direct {v1, p0, v0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$e;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Landroid/os/Handler;)V

    .line 15
    const-string v0, "TamperCrashFixThread"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 23
    return-void
.end method

.method public final m()I
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x17

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_8

    .line 8
    return v2

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 15
    invoke-static {v0, v1}, Lvg0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_18

    .line 21
    const v0, 0x7f0d00f2

    .line 24
    return v0

    .line 25
    :cond_18
    return v2
.end method

.method public final n()Z
    .registers 7

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isNeedFrontMemory"

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    new-array v1, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v3, v1, v4

    .line 21
    const-string v3, "UsbFillActivity"

    .line 23
    const-string v5, "isNeedFrontMemory ={?}"

    .line 25
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-nez v0, :cond_21

    .line 30
    invoke-static {v4}, Lp7;->l(Z)V

    .line 33
    return v4

    .line 34
    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    const/16 v1, 0x17

    .line 38
    if-lt v0, v1, :cond_70

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lu50;->d(Landroid/content/Context;)Ljava/util/Map;

    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_70

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_70

    .line 56
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 59
    move-result-object v1

    .line 60
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 62
    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_70

    .line 68
    invoke-static {v2}, Lp7;->l(Z)V

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v0

    .line 79
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6f

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v5, "isShowPermissionDialog, lackOfPermissions="

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_4e

    .line 112
    :cond_6f
    return v2

    .line 113
    :cond_70
    const-string v0, "isShowPermissionDialog, false"

    .line 115
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {v4}, Lp7;->l(Z)V

    .line 121
    return v4
.end method

.method public final o()V
    .registers 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    const-string v1, "应用出现异常错误，无法正常使用，请到amapauto.com官网下载使用正式版本重新安装。"

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;

    .line 13
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$h;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 16
    const-string v2, "进入官网"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 21
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$i;

    .line 23
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$i;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 26
    const-string v2, "退出应用"

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 38
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v0, 0x17

    .line 8
    if-lt p1, v0, :cond_37

    .line 10
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 12
    if-eqz p1, :cond_37

    .line 14
    invoke-static {}, Lzm;->d()Lzm;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "isNeedSystemAuthorizationPromptBox"

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 24
    move-result p1

    .line 25
    const-string v0, "UsbFillActivity"

    .line 27
    if-eqz p1, :cond_2a

    .line 29
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 31
    const v1, 0x7f0b0058

    .line 34
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 37
    const-string p1, "onConfigurationChanged show layout_permission_declare_2"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto :goto_37

    .line 43
    :cond_2a
    iget-object p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 45
    const v1, 0x7f0b0057

    .line 48
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 51
    const-string p1, "onConfigurationChanged show layout_permission_declare"

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_37
    :goto_37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    new-array v0, p1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 18
    const-string v1, "UsbFillActivity"

    .line 20
    const-string v3, "onCreate, taskId = {?}"

    .line 22
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lse;->c()Lse;

    .line 28
    move-result-object v0

    .line 29
    const v3, 0xea61

    .line 32
    invoke-virtual {v0, v3}, Lse;->getOptionalValue(I)Leq$a;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 39
    move-result v3

    .line 40
    const/4 v4, -0x1

    .line 41
    if-eqz v3, :cond_79

    .line 43
    const v3, 0x1020002

    .line 46
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 53
    move-result-object v3

    .line 54
    new-instance v5, Lcom/autonavi/auto/remote/fill/UsbFillActivity$c;

    .line 56
    invoke-direct {v5, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$c;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 59
    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 62
    invoke-virtual {v0}, Leq$a;->a()Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/os/Bundle;

    .line 68
    :try_start_43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 79
    move-result v3

    .line 80
    const-string v5, "WindowManager.DefaultDisplay curDisplayId:{?},multiScreenBundle:{?}"

    .line 82
    const/4 v6, 0x2

    .line 83
    new-array v6, v6, [Ljava/lang/Object;

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v7

    .line 89
    aput-object v7, v6, v2

    .line 91
    if-nez v0, :cond_5f

    .line 93
    const-string v7, "null"

    .line 95
    goto :goto_69

    .line 96
    :cond_5f
    const-string v7, "multi_screen_display_id"

    .line 98
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 101
    move-result v7

    .line 102
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v7

    .line 106
    :goto_69
    aput-object v7, v6, p1

    .line 108
    invoke-static {v1, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_6e} :catch_70

    .line 111
    move v4, v3

    .line 112
    goto :goto_7a

    .line 113
    :catch_70
    move-exception p1

    .line 114
    const-string v3, "ocuur an error!!"

    .line 116
    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    invoke-static {v1, v3, p1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    const/4 v0, 0x0

    .line 123
    :goto_7a
    if-eqz v0, :cond_8e

    .line 125
    if-eqz v4, :cond_8e

    .line 127
    invoke-static {}, Lse;->c()Lse;

    .line 130
    move-result-object p1

    .line 131
    new-instance v0, Leq$a;

    .line 133
    invoke-direct {v0, p0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 136
    const v1, 0xea62

    .line 139
    invoke-virtual {p1, v1, v0}, Lse;->setOptionalValue(ILeq$a;)V

    .line 142
    goto :goto_c0

    .line 143
    :cond_8e
    invoke-static {}, Lrv;->H()Lrv;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/autonavi/common/tool/b;->Q(Landroid/content/Context;)Z

    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_bd

    .line 157
    invoke-static {}, Lrv;->H()Lrv;

    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lxf0;->C(Landroid/content/Context;)Z

    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_b9

    .line 175
    const-string p1, "System.exit, onCreate !SystemUtils.isAppForeground"

    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 p1, 0x71

    .line 182
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 185
    return-void

    .line 186
    :cond_b9
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->p()V

    .line 189
    goto :goto_c0

    .line 190
    :cond_bd
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->i()V

    .line 193
    :goto_c0
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 7
    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "UsbFillActivity"

    .line 17
    const-string v4, "onDestroy Start , taskId = {?}"

    .line 19
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :try_start_15
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_18} :catch_19

    .line 25
    goto :goto_33

    .line 26
    :catch_19
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v5, "onDestroy Exception, taskId "

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    new-array v4, v3, [Ljava/lang/Object;

    .line 49
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :goto_33
    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    aput-object v1, v0, v3

    .line 64
    const-string v1, "onDestroy End, taskId = {?}"

    .line 66
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_5

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4
    invoke-static {}, Lzm;->d()Lzm;

    .line 7
    move-result-object p2

    .line 8
    const-string p3, "isNeedFrontMemory"

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, p3, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 14
    move-result p2

    .line 15
    new-array p3, v0, [Ljava/lang/Object;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v2

    .line 22
    aput-object v2, p3, v1

    .line 24
    const-string v1, "UsbFillActivity"

    .line 26
    const-string v2, "isNeedFrontMemory ={?}"

    .line 28
    invoke-static {v1, v2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    if-eqz p2, :cond_2f

    .line 33
    if-ne p1, v0, :cond_2f

    .line 35
    iget p1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->b:I

    .line 37
    iget p2, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->c:I

    .line 39
    iget p3, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->d:I

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1, p2, p3, v0}, Lcom/autonavi/common/tool/b;->b(IIILandroid/app/Application;)V

    .line 48
    :cond_2f
    return-void
.end method

.method public final p()V
    .registers 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    const-string v1, "检测到导航启动异常，是否尝试修复"

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11
    const-string v1, "修复可能会清除历史记录"

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 16
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$j;

    .line 18
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$j;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 21
    const-string v2, "立即修复"

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 26
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$k;

    .line 28
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$k;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 31
    const-string v2, "下次再说"

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    return-void
.end method

.method public final q()V
    .registers 9

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isNeedSystemAuthorizationPromptBox"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const-string v3, "UsbFillActivity"

    .line 15
    if-eqz v0, :cond_4c

    .line 17
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboConfig;->c()Lcom/autonavi/amapauto/framework/TurboConfig;

    .line 20
    move-result-object v4

    .line 21
    const-string v5, "isShowSysAuthorizationPromptBox"

    .line 23
    const-string v6, "0"

    .line 25
    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amapauto/framework/TurboConfig;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    new-array v5, v1, [Ljava/lang/Object;

    .line 31
    aput-object v4, v5, v2

    .line 33
    const-string v7, "[startMapActivity] isShowSysAuthorizationPromptBox:{?}"

    .line 35
    invoke-static {v3, v7, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v7, "[startMapActivity] isShowSysAuthorizationPromptBox:"

    .line 45
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_4a

    .line 64
    const-string v5, "false"

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_48

    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    const/4 v4, 0x0

    .line 74
    goto :goto_50

    .line 75
    :cond_4a
    :goto_4a
    const/4 v4, 0x1

    .line 76
    goto :goto_50

    .line 77
    :cond_4c
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->n()Z

    .line 80
    move-result v4

    .line 81
    :goto_50
    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    move-result-object v5

    .line 87
    aput-object v5, v1, v2

    .line 89
    const-string v5, "startMapActivity, isShowPermissionDialog:{?}"

    .line 91
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v5, "startMapActivity, isShowPermissionDialog:"

    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz v4, :cond_b6

    .line 116
    new-instance v1, Ld7;

    .line 118
    const v3, 0x7f0e0005

    .line 121
    invoke-direct {v1, p0, v3, v0}, Ld7;-><init>(Landroid/content/Context;IZ)V

    .line 124
    iput-object v1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 126
    if-nez v0, :cond_92

    .line 128
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->m()I

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_8b

    .line 134
    iget-object v3, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 136
    invoke-virtual {v3, v1}, Ld7;->d(I)V

    .line 139
    goto :goto_92

    .line 140
    :cond_8b
    iget-object v1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 142
    const-string v3, ""

    .line 144
    invoke-virtual {v1, v3}, Ld7;->e(Ljava/lang/String;)V

    .line 147
    :cond_92
    :goto_92
    iget-object v1, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 149
    new-instance v3, Lcom/autonavi/auto/remote/fill/UsbFillActivity$a;

    .line 151
    invoke-direct {v3, p0, v0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$a;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;Z)V

    .line 154
    invoke-virtual {v1, v3}, Ld7;->c(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 159
    new-instance v1, Lcom/autonavi/auto/remote/fill/UsbFillActivity$b;

    .line 161
    invoke-direct {v1, p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity$b;-><init>(Lcom/autonavi/auto/remote/fill/UsbFillActivity;)V

    .line 164
    invoke-virtual {v0, v1}, Ld7;->b(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 169
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 172
    iget-object v0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 174
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    iget-object v0, p0, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->a:Ld7;

    .line 179
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 182
    goto :goto_bc

    .line 183
    :cond_b6
    invoke-static {v2}, Lp7;->k(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/autonavi/auto/remote/fill/UsbFillActivity;->r()V

    .line 189
    :goto_bc
    return-void
.end method

.method public final r()V
    .registers 11

    .line 1
    const-string v0, "Activity"

    .line 3
    const-string v1, "startMapActivity"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object v2, v1, v3

    .line 22
    const-string v2, "UsbFillActivity"

    .line 24
    const-string v4, "startMapActivity start , taskId = {?}"

    .line 26
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lp7;->c()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_37

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    aput-object v1, v0, v3

    .line 47
    const-string v1, "startMapActivity but isFinishing , taskId = {?}"

    .line 49
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    return-void

    .line 56
    :cond_37
    invoke-static {}, Lte0;->a()I

    .line 59
    move-result v1

    .line 60
    int-to-long v4, v1

    .line 61
    const-wide/16 v6, 0x0

    .line 63
    const v1, 0xea61

    .line 66
    const-class v8, Lcom/autonavi/amapauto/MainMapActivity;

    .line 68
    cmp-long v9, v4, v6

    .line 70
    if-nez v9, :cond_b1

    .line 72
    invoke-static {}, Lse;->c()Lse;

    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4, v1}, Lse;->getOptionalValue(I)Leq$a;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Leq$a;->b()Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_62

    .line 86
    invoke-virtual {v1}, Leq$a;->a()Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroid/os/Bundle;

    .line 92
    const-string v4, "isChannelHandle"

    .line 94
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 97
    move-result v1

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    const/4 v1, 0x0

    .line 100
    :goto_63
    if-eqz v1, :cond_7c

    .line 102
    const-string v1, "FLAG_ACTIVITY_NEW_TASK execute in channel"

    .line 104
    new-array v4, v3, [Ljava/lang/Object;

    .line 106
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lse;->c()Lse;

    .line 112
    move-result-object v1

    .line 113
    new-instance v4, Leq$a;

    .line 115
    invoke-direct {v4, p0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 118
    const v5, 0xea62

    .line 121
    invoke-virtual {v1, v5, v4}, Lse;->setOptionalValue(ILeq$a;)V

    .line 124
    goto :goto_aa

    .line 125
    :cond_7c
    const-string v1, "FLAG_ACTIVITY_BROUGHT_TO_FRONT"

    .line 127
    new-array v4, v3, [Ljava/lang/Object;

    .line 129
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    .line 134
    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const/high16 v4, 0x20000

    .line 139
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 149
    move-result-object v4

    .line 150
    if-eqz v4, :cond_a2

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    :cond_a2
    :try_start_a2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    .line 166
    goto :goto_aa

    .line 167
    :catchall_a6
    move-exception v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    :goto_aa
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 174
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 177
    goto :goto_104

    .line 178
    :cond_b1
    const-string v4, "FLAG_ACTIVITY_NEW_TASK"

    .line 180
    new-array v5, v3, [Ljava/lang/Object;

    .line 182
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    new-instance v4, Landroid/content/Intent;

    .line 187
    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    const/high16 v5, 0x10000000

    .line 192
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-static {}, Lse;->c()Lse;

    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v5, v1}, Lse;->getOptionalValue(I)Leq$a;

    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1}, Leq$a;->b()Z

    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_d9

    .line 209
    invoke-static {}, Lha0;->a()Landroid/app/ActivityOptions;

    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1, v3}, Lia0;->a(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;

    .line 216
    move-result-object v1

    .line 217
    goto :goto_da

    .line 218
    :cond_d9
    const/4 v1, 0x0

    .line 219
    :goto_da
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 226
    move-result-object v5

    .line 227
    if-eqz v5, :cond_ef

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 240
    :cond_ef
    if-eqz v1, :cond_f9

    .line 242
    :try_start_f1
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 249
    goto :goto_101

    .line 250
    :cond_f9
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_fc
    .catchall {:try_start_f1 .. :try_end_fc} :catchall_fd

    .line 253
    goto :goto_101

    .line 254
    :catchall_fd
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    :goto_101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 261
    :goto_104
    new-array v0, v0, [Ljava/lang/Object;

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 266
    move-result v1

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    move-result-object v1

    .line 271
    aput-object v1, v0, v3

    .line 273
    const-string v1, "startMapActivity End , taskId = {?}"

    .line 275
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    return-void
.end method
