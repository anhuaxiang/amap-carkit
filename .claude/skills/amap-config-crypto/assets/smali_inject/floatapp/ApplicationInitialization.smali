.class public Lfloatapp/ApplicationInitialization;
.super Ljava/lang/Object;
.source "ApplicationInitialization.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .registers 4
    .param p0, "application"  # Landroid/app/Application;

    .prologue
    .line 8
    new-instance v1, Lfloatapp/LifecycleCallbacks;

    invoke-direct {v1}, Lfloatapp/LifecycleCallbacks;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.autonavi.plus.showmap"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    const-string v1, "com.autonavi.plus.closemap"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    const-string v1, "com.autonavi.plus.offset"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lfloatapp/ControlReceiver;

    invoke-direct {v2}, Lfloatapp/ControlReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    return-void
.end method
