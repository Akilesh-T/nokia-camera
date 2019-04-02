.class public Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;
.super Ljava/lang/Object;
.source "AndroidImageProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Plane"
.end annotation


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mPixelStride:I

.field private final mRowStride:I

.field final synthetic this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;Landroid/media/Image$Plane;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;
    .param p2, "imagePlane"    # Landroid/media/Image$Plane;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;->this$0:Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;->mPixelStride:I

    .line 53
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;->mRowStride:I

    .line 54
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 55
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;->mPixelStride:I

    return v0
.end method

.method public getRowStride()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;->mRowStride:I

    return v0
.end method
