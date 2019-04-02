.class public Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;
.super Ljava/lang/Object;
.source "CaptureRequestProxy.java"


# instance fields
.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/hardware/camera2/CaptureRequest$Key;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CaptureRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    return-void
.end method
