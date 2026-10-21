.class public Lfloatapp/ControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ControlReceiver.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .prologue
    .line 13
    invoke-static {}, Lfloatapp/FloatWindowsManage;->getInstance()Lfloatapp/FloatWindowsManage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lfloatapp/FloatWindowsManage;->control(Landroid/content/Intent;)V

    .line 14
    return-void
.end method
