.class public final Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$Executable;
.super Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$AccessibleObject;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Executable"
.end annotation


# instance fields
.field private accessFlags:I

.field private artMethod:J

.field private declaringClass:Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$Class;

.field private declaringClassOfOverriddenMethod:Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$Class;

.field private parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Lbin/mt/signature/org/lsposed/hiddenapibypass/Helper$AccessibleObject;-><init>()V

    return-void
.end method
