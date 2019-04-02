.class public Lcom/thirdparty/imagelab/EverPicSelfieVideo;
.super Ljava/lang/Object;
.source "EverPicSelfieVideo.java"


# static fields
.field public static final DEBUG_TITLE:Ljava/lang/String; = "psmodelsdk-v2.0.3/SelfiePreview"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final mIsSupported:Z


# instance fields
.field private bokehLevel:I

.field private imgHeight:I

.field private imgWidth:I

.field private rawFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 23
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isSelfieBokehPreviewUsingImageLabSolution()Z

    move-result v0

    sput-boolean v0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->mIsSupported:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "pixelArrayFormat"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iput p1, p0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->imgWidth:I

    .line 29
    iput p2, p0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->imgHeight:I

    .line 30
    iput p3, p0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->rawFormat:I

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->mIsSupported:Z

    return v0
.end method


# virtual methods
.method public processImage(Landroid/media/Image;ILjava/util/ArrayList;)I
    .locals 19
    .param p1, "image"    # Landroid/media/Image;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "mFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    const/16 v18, -0x1

    .line 42
    .local v18, "result":I
    sget-boolean v0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return v18

    .line 49
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v12, p2

    move-object/from16 v13, p3

    .line 48
    invoke-static/range {v0 .. v17}, Lcom/fih_foxconn/imagelab/PSProc;->previewSegmentWithFaceHAL3IfDebug(IIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIILjava/util/ArrayList;FZZZ)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public setBokehLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 34
    sget-boolean v0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iput p1, p0, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->bokehLevel:I

    goto :goto_0
.end method
