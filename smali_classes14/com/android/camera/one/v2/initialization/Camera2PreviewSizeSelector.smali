.class public Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;
.super Ljava/lang/Object;
.source "Camera2PreviewSizeSelector.java"

# interfaces
.implements Lcom/android/camera/one/PreviewSizeSelector;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Camera2PreviewSizeSelector"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    .line 41
    return-void
.end method

.method private getLargestPreviewSize()Lcom/android/camera/util/Size;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    new-instance v1, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector$1;-><init>(Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    return-object v0
.end method


# virtual methods
.method public pickMotionPreviewDataCallbackSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 5
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    const/16 v4, 0x280

    const/16 v3, 0x1e0

    .line 87
    invoke-static {p1}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v1

    .line 88
    .local v1, "targetAspectRatio":Lcom/android/camera/exif/Rational;
    sget-object v2, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    invoke-static {v2, v1}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v2, 0x168

    invoke-direct {v0, v4, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 90
    .local v0, "requiredSize":Lcom/android/camera/util/Size;
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/camera/util/Size;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/camera/util/Size;

    invoke-static {v2, v0}, Lcom/android/camera/CaptureModuleUtil;->isRequiredSizeExsit([Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    sget-object v2, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "16x9/pickMotionPreviewSize: 640x360"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v0

    .line 113
    :goto_0
    return-object v2

    .line 94
    :cond_0
    sget-object v2, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "16x9/motion: pickSmallestPreviewSize"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->pickSmallestPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v2

    goto :goto_0

    .line 97
    .end local v0    # "requiredSize":Lcom/android/camera/util/Size;
    :cond_1
    sget-object v2, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_18x9:Lcom/android/camera/exif/Rational;

    invoke-static {v2, v1}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v2, 0x3c0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 99
    .restart local v0    # "requiredSize":Lcom/android/camera/util/Size;
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/camera/util/Size;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/camera/util/Size;

    invoke-static {v2, v0}, Lcom/android/camera/CaptureModuleUtil;->isRequiredSizeExsit([Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    sget-object v2, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "18x9/pickMotionPreviewSize: 960x480"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v0

    .line 101
    goto :goto_0

    .line 103
    :cond_2
    sget-object v2, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "18x9/motion: pickSmallestPreviewSize"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->pickSmallestPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v2

    goto :goto_0

    .line 107
    .end local v0    # "requiredSize":Lcom/android/camera/util/Size;
    :cond_3
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v4, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 108
    .restart local v0    # "requiredSize":Lcom/android/camera/util/Size;
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/camera/util/Size;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/camera/util/Size;

    invoke-static {v2, v0}, Lcom/android/camera/CaptureModuleUtil;->isRequiredSizeExsit([Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    sget-object v2, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "normal/pickMotionPreviewSize: 640x480"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v0

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    sget-object v2, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "normal/motion: pickSmallestPreviewSize"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->pickSmallestPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v2

    goto :goto_0
.end method

.method public pickPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 6
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->getLargestPreviewSize()Lcom/android/camera/util/Size;

    move-result-object p1

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 51
    .local v0, "pictureAspectRatio":F
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/camera/util/Size;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/camera/util/Size;

    float-to-double v4, v0

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/android/camera/CaptureModuleUtil;->getOptimalPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 53
    .local v1, "size":Lcom/android/camera/util/Size;
    return-object v1
.end method

.method public pickSmallestPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 6
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->getLargestPreviewSize()Lcom/android/camera/util/Size;

    move-result-object p1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 80
    .local v0, "pictureAspectRatio":F
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/camera/util/Size;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/camera/util/Size;

    float-to-double v4, v0

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/android/camera/CaptureModuleUtil;->getSmallestPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 82
    .local v1, "size":Lcom/android/camera/util/Size;
    return-object v1
.end method

.method public pickVIdeoPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 3
    .param p1, "imageResolution"    # Lcom/android/camera/util/Size;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->getLargestPreviewSize()Lcom/android/camera/util/Size;

    move-result-object p1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/camera/util/Size;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/camera/util/Size;

    invoke-static {v1, p1}, Lcom/android/camera/CaptureModuleUtil;->getVideoPreviewSize([Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 65
    .local v0, "previewSize":Lcom/android/camera/util/Size;
    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/Camera2PreviewSizeSelector;->pickPreviewSize(Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 68
    :cond_1
    return-object v0
.end method
