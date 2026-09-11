.class public Lfloatapp/AutoamapPluginManage;
.super Ljava/lang/Object;
.source "AutoamapPluginManage.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lfloatapp/AutoamapPluginManage;


# instance fields
.field private application:Landroid/app/Application;

.field private context:Landroid/content/Context;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lfloatapp/AutoamapPluginManage;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfloatapp/AutoamapPluginManage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 4
    .param p1, "application"  # Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lfloatapp/AutoamapPluginManage;->application:Landroid/app/Application;

    .line 23
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfloatapp/AutoamapPluginManage;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lfloatapp/ApplicationInitialization;->init(Landroid/app/Application;)V

    .line 27
    invoke-static {}, Lfloatapp/AMapViewManage;->getInstance()Lfloatapp/AMapViewManage;

    move-result-object v0

    iget-object v1, p0, Lfloatapp/AutoamapPluginManage;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfloatapp/AMapViewManage;->init(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lfloatapp/FloatWindowsManage;->getInstance()Lfloatapp/FloatWindowsManage;

    move-result-object v0

    iget-object v1, p0, Lfloatapp/AutoamapPluginManage;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfloatapp/FloatWindowsManage;->init(Landroid/content/Context;)V

    .line 29

    .line 30
    return-void
.end method

.method public static load(Landroid/app/Application;)V
    .registers 5
    .param p0, "application"  # Landroid/app/Application;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 33
    invoke-static {p0}, Lfloatapp/Utils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "processName":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 35
    :cond_10
    sget-object v1, Lfloatapp/AutoamapPluginManage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not main process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_2e
    :goto_2e
    return-void

    .line 38
    :cond_2f
    sget-object v1, Lfloatapp/AutoamapPluginManage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is main process, start init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v1, Lfloatapp/AutoamapPluginManage;->instance:Lfloatapp/AutoamapPluginManage;

    if-nez v1, :cond_2e

    .line 40
    const-class v2, Lfloatapp/AutoamapPluginManage;

    monitor-enter v2

    .line 41
    :try_start_54
    sget-object v1, Lfloatapp/AutoamapPluginManage;->instance:Lfloatapp/AutoamapPluginManage;

    if-nez v1, :cond_5f

    .line 42
    new-instance v1, Lfloatapp/AutoamapPluginManage;

    invoke-direct {v1, p0}, Lfloatapp/AutoamapPluginManage;-><init>(Landroid/app/Application;)V

    sput-object v1, Lfloatapp/AutoamapPluginManage;->instance:Lfloatapp/AutoamapPluginManage;

    .line 44
    :cond_5f
    monitor-exit v2

    goto :goto_2e

    :catchall_61
    move-exception v1

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_61

    throw v1
.end method
