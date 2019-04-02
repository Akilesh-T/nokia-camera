.class public Lcom/android/camera/CaptureModuleUtil;
.super Ljava/lang/Object;
.source "CaptureModuleUtil.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureModuleUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/CaptureModuleUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceNaturalOrientation(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 38
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    .line 40
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v2, :cond_3

    :cond_1
    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_4

    .line 46
    :cond_3
    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static getOptimalPreviewSize([Lcom/android/camera/util/Size;D)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "sizes"    # [Lcom/android/camera/util/Size;
    .param p1, "targetRatio"    # D

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/CaptureModuleUtil;->getOptimalPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getOptimalPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;
    .locals 11
    .param p0, "sizes"    # [Lcom/android/camera/util/Size;
    .param p1, "targetRatio"    # D
    .param p3, "aspectRatioTolerance"    # Ljava/lang/Double;

    .prologue
    .line 68
    const/16 v0, 0x438

    .line 71
    .local v0, "MAX_ASPECT_HEIGHT":I
    const/4 v2, 0x0

    .line 72
    .local v2, "count":I
    array-length v7, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v5, p0, v6

    .line 73
    .local v5, "s":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x438

    if-gt v8, v9, :cond_0

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 72
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    .end local v5    # "s":Lcom/android/camera/util/Size;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v1, "camera1Sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    array-length v7, p0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v5, p0, v6

    .line 81
    .restart local v5    # "s":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x438

    if-gt v8, v9, :cond_2

    .line 82
    new-instance v8, Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    .end local v5    # "s":Lcom/android/camera/util/Size;
    :cond_3
    invoke-static {v1, p1, p2, p3}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I

    move-result v4

    .line 90
    .local v4, "optimalIndex":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_5

    .line 91
    const/4 v5, 0x0

    .line 100
    :cond_4
    :goto_2
    return-object v5

    .line 94
    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/Size;

    .line 95
    .local v3, "optimal":Lcom/android/camera/util/Size;
    array-length v7, p0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_7

    aget-object v5, p0, v6

    .line 96
    .restart local v5    # "s":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_6

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 95
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 100
    .end local v5    # "s":Lcom/android/camera/util/Size;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static getSmallestPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;
    .locals 11
    .param p0, "sizes"    # [Lcom/android/camera/util/Size;
    .param p1, "targetRatio"    # D
    .param p3, "aspectRatioTolerance"    # Ljava/lang/Double;

    .prologue
    .line 144
    const/16 v0, 0x438

    .line 147
    .local v0, "MAX_ASPECT_HEIGHT":I
    const/4 v2, 0x0

    .line 148
    .local v2, "count":I
    array-length v7, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, p0, v6

    .line 149
    .local v3, "s":Lcom/android/camera/util/Size;
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x438

    if-gt v8, v9, :cond_0

    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 148
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "s":Lcom/android/camera/util/Size;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v1, "camera1Sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    array-length v7, p0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v3, p0, v6

    .line 157
    .restart local v3    # "s":Lcom/android/camera/util/Size;
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x438

    if-gt v8, v9, :cond_2

    .line 158
    new-instance v8, Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 163
    .end local v3    # "s":Lcom/android/camera/util/Size;
    :cond_3
    invoke-static {v1, p1, p2, p3}, Lcom/android/camera/util/CameraUtil;->getSmallestPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I

    move-result v5

    .line 166
    .local v5, "smallestIndex":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 167
    const/4 v3, 0x0

    .line 176
    :cond_4
    :goto_2
    return-object v3

    .line 170
    :cond_5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/util/Size;

    .line 171
    .local v4, "smallest":Lcom/android/camera/util/Size;
    array-length v7, p0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_7

    aget-object v3, p0, v6

    .line 172
    .restart local v3    # "s":Lcom/android/camera/util/Size;
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_6

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 171
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 176
    .end local v3    # "s":Lcom/android/camera/util/Size;
    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static getSmallestThumbnialize([Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 8
    .param p0, "sizes"    # [Lcom/android/camera/util/Size;

    .prologue
    const/4 v4, 0x0

    .line 181
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object v4

    .line 183
    :cond_1
    const/4 v1, -0x1

    .line 184
    .local v1, "smallestSizeIndex":I
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 186
    .local v2, "minHeight":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 187
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    if-nez v5, :cond_3

    .line 186
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_3
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    int-to-double v6, v5

    cmpl-double v5, v2, v6

    if-lez v5, :cond_2

    .line 189
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    int-to-double v2, v5

    .line 190
    move v1, v0

    goto :goto_2

    .line 193
    :cond_4
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    aget-object v4, p0, v1

    goto :goto_0
.end method

.method public static getVideoPreviewSize([Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 14
    .param p0, "sizes"    # [Lcom/android/camera/util/Size;
    .param p1, "videoSize"    # Lcom/android/camera/util/Size;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 105
    const/16 v9, 0x438

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 108
    .local v0, "MAX_ASPECT_HEIGHT":I
    const/4 v2, 0x0

    .line 109
    .local v2, "count":I
    array-length v10, p0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v5, p0, v9

    .line 110
    .local v5, "s":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v11

    if-gt v11, v0, :cond_0

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 109
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 114
    .end local v5    # "s":Lcom/android/camera/util/Size;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v1, "camera1Sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/util/Size;>;"
    array-length v10, p0

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v5, p0, v9

    .line 118
    .restart local v5    # "s":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v11

    if-gt v11, v0, :cond_2

    .line 119
    new-instance v11, Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v13

    invoke-direct {v11, v12, v13}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 123
    .end local v5    # "s":Lcom/android/camera/util/Size;
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    .line 124
    .local v6, "videoAspectRatio":F
    float-to-double v10, v6

    .line 125
    invoke-static {v1, v10, v11, v7}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSizeIndex(Ljava/util/List;DLjava/lang/Double;)I

    move-result v4

    .line 128
    .local v4, "optimalIndex":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_5

    move-object v5, v7

    .line 138
    :cond_4
    :goto_2
    return-object v5

    .line 132
    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/Size;

    .line 133
    .local v3, "optimal":Lcom/android/camera/util/Size;
    array-length v9, p0

    :goto_3
    if-ge v8, v9, :cond_7

    aget-object v5, p0, v8

    .line 134
    .restart local v5    # "s":Lcom/android/camera/util/Size;
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_6

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v11

    if-eq v10, v11, :cond_4

    .line 133
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v5    # "s":Lcom/android/camera/util/Size;
    :cond_7
    move-object v5, v7

    .line 138
    goto :goto_2
.end method

.method public static isRequiredSizeExsit([Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Z
    .locals 5
    .param p0, "supportedPreviewSizes"    # [Lcom/android/camera/util/Size;
    .param p1, "requiredSize"    # Lcom/android/camera/util/Size;

    .prologue
    const/4 v1, 0x0

    .line 223
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 224
    :cond_0
    sget-object v2, Lcom/android/camera/CaptureModuleUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "isRequiredSizeExsit/no support supportedPreviewSizes list"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    :goto_0
    return v1

    .line 228
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 229
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    if-ne v2, v3, :cond_2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 230
    sget-object v1, Lcom/android/camera/CaptureModuleUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRequiredSizeExsit/find size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x1

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    :cond_3
    sget-object v2, Lcom/android/camera/CaptureModuleUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRequiredSizeExsit/not find size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static pickBufferDimensions([Lcom/android/camera/util/Size;DLandroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 9
    .param p0, "supportedPreviewSizes"    # [Lcom/android/camera/util/Size;
    .param p1, "bestPreviewAspectRatio"    # D
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 204
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v6

    rem-int/lit16 v6, v6, 0xb4

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_2

    move v3, v4

    .line 207
    .local v3, "swapDimens":Z
    :goto_0
    invoke-static {p3}, Lcom/android/camera/CaptureModuleUtil;->getDeviceNaturalOrientation(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 209
    if-nez v3, :cond_3

    move v3, v4

    .line 211
    :cond_0
    :goto_1
    move-wide v0, p1

    .line 212
    .local v0, "bestAspect":D
    if-eqz v3, :cond_1

    .line 213
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v0, v4, v0

    .line 216
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, p1, p2, v4}, Lcom/android/camera/CaptureModuleUtil;->getOptimalPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 218
    .local v2, "pick":Lcom/android/camera/util/Size;
    sget-object v4, Lcom/android/camera/CaptureModuleUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Picked buffer size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    return-object v2

    .end local v0    # "bestAspect":D
    .end local v2    # "pick":Lcom/android/camera/util/Size;
    .end local v3    # "swapDimens":Z
    :cond_2
    move v3, v5

    .line 204
    goto :goto_0

    .restart local v3    # "swapDimens":Z
    :cond_3
    move v3, v5

    .line 209
    goto :goto_1
.end method
