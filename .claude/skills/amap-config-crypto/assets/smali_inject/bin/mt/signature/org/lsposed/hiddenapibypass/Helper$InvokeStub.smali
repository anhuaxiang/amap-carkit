.class public Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$InvokeStub;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvokeStub"
.end annotation


# direct methods
.method private varargs constructor <init>([Ljava/lang/Object;)V
    .registers 4
    .param p1, "args"  # [Ljava/lang/Object;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to new a instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "args"  # [Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to invoke the method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
