.class final Lcom/facebook/login/LoginClient$Result$1;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/login/LoginClient$Result;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Result;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 673
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/login/LoginClient$Result;-><init>(Landroid/os/Parcel;Lcom/facebook/login/LoginClient$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient$Result$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/login/LoginClient$Result;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 678
    new-array v0, p1, [Lcom/facebook/login/LoginClient$Result;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient$Result$1;->newArray(I)[Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    return-object v0
.end method
