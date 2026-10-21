.class Lbin/mt/signature/KillerApplication$1;
.super Ljava/lang/Object;
.source "KillerApplication.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbin/mt/signature/KillerApplication;->killPM(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fakeSignature:Landroid/content/pm/Signature;

.field final synthetic val$originalCreator:Landroid/os/Parcelable$Creator;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcelable$Creator;Ljava/lang/String;Landroid/content/pm/Signature;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lbin/mt/signature/KillerApplication$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    iput-object p2, p0, Lbin/mt/signature/KillerApplication$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lbin/mt/signature/KillerApplication$1;->val$fakeSignature:Landroid/content/pm/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "source"  # Landroid/os/Parcel;

    .line 56
    iget-object v0, p0, Lbin/mt/signature/KillerApplication$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 57
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lbin/mt/signature/KillerApplication$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 58
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_22

    .line 59
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v3, p0, Lbin/mt/signature/KillerApplication$1;->val$fakeSignature:Landroid/content/pm/Signature;

    aput-object v3, v1, v2

    .line 61
    :cond_22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_3b

    .line 62
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v1, :cond_3b

    .line 63
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 64
    .local v1, "signaturesArray":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_3b

    array-length v3, v1

    if-lez v3, :cond_3b

    .line 65
    iget-object v3, p0, Lbin/mt/signature/KillerApplication$1;->val$fakeSignature:Landroid/content/pm/Signature;

    aput-object v3, v1, v2

    .line 70
    .end local v1  # "signaturesArray":[Landroid/content/pm/Signature;
    :cond_3b
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lbin/mt/signature/KillerApplication$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/PackageInfo;
    .registers 3
    .param p1, "size"  # I

    .line 75
    iget-object v0, p0, Lbin/mt/signature/KillerApplication$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lbin/mt/signature/KillerApplication$1;->newArray(I)[Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
