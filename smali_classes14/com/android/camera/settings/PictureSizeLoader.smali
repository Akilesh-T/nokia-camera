.class public Lcom/android/camera/settings/PictureSizeLoader;
.super Ljava/lang/Object;
.source "PictureSizeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field protected final ASPECT_RATIO_16_9:I

.field protected final ASPECT_RATIO_18_9:I

.field protected final ASPECT_RATIO_4_3:I

.field protected final mCachedOnly:Z

.field protected final mCameraDeviceInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/PictureSizeLoader;-><init>(Landroid/content/Context;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedOnly"    # Z

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/settings/PictureSizeLoader;->ASPECT_RATIO_4_3:I

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/settings/PictureSizeLoader;->ASPECT_RATIO_16_9:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/settings/PictureSizeLoader;->ASPECT_RATIO_18_9:I

    .line 95
    iput-object p1, p0, Lcom/android/camera/settings/PictureSizeLoader;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/PictureSizeLoader;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    .line 98
    invoke-static {p1, v0}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->getAndroidCameraAgent(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/PictureSizeLoader;->mCameraDeviceInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    .line 100
    iput-boolean p2, p0, Lcom/android/camera/settings/PictureSizeLoader;->mCachedOnly:Z

    .line 101
    return-void
.end method

.method private computeQualitiesForCamera(Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;Ljava/lang/String;)Lcom/google/common/base/Optional;
    .locals 2
    .param p1, "facingSelector"    # Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;
    .param p2, "resolutionMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/camera/settings/PictureSizeLoader;->mCameraDeviceInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-static {v1, p1}, Lcom/android/camera/settings/SettingsUtil;->getCameraId(Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)I

    move-result v0

    .line 162
    .local v0, "cameraId":I
    if-ltz v0, :cond_1

    .line 164
    const-string v1, "static_frt"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/settings/SettingsUtil;->getSelectedVideoQualities(IZ)Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    .line 167
    :cond_0
    invoke-static {v0}, Lcom/android/camera/settings/SettingsUtil;->getSelectedVideoQualities(I)Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_1
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0
.end method

.method private computeSizesForCamera(Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "facingSelector"    # Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;
    .param p2, "resolutionMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 132
    iget-object v5, p0, Lcom/android/camera/settings/PictureSizeLoader;->mCameraDeviceInfo:Lcom/android/ex/camera2/portability/CameraDeviceInfo;

    invoke-static {v5, p1}, Lcom/android/camera/settings/SettingsUtil;->getCameraId(Lcom/android/ex/camera2/portability/CameraDeviceInfo;Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;)I

    move-result v1

    .line 133
    .local v1, "cameraId":I
    if-ltz v1, :cond_4

    .line 134
    iget-boolean v5, p0, Lcom/android/camera/settings/PictureSizeLoader;->mCachedOnly:Z

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/android/camera/settings/PictureSizeLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/android/camera/settings/CameraPictureSizesCacher;->getCachedSizesForCamera(ILandroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 136
    invoke-virtual {v5}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 141
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :goto_0
    if-eqz v2, :cond_4

    .line 142
    const-string v5, "dynamic"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    sget-object v5, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    if-ne p1, v5, :cond_1

    .line 144
    :goto_1
    invoke-static {v2, v3}, Lcom/android/camera/settings/ResolutionUtil;->getDisplayableSizesFromSupported(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 150
    :goto_2
    iget-object v3, p0, Lcom/android/camera/settings/PictureSizeLoader;->mContentResolver:Landroid/content/ContentResolver;

    .line 151
    invoke-static {v3}, Lcom/android/camera/util/GservicesHelper;->getBlacklistedResolutionsBack(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "blacklisted":Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/camera/settings/ResolutionUtil;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 156
    .end local v0    # "blacklisted":Ljava/lang/String;
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :goto_3
    return-object v2

    .line 138
    :cond_0
    iget-object v5, p0, Lcom/android/camera/settings/PictureSizeLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/android/camera/settings/CameraPictureSizesCacher;->getSizesForCamera(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .restart local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    goto :goto_0

    :cond_1
    move v3, v4

    .line 143
    goto :goto_1

    .line 147
    :cond_2
    sget-object v5, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    if-ne p1, v5, :cond_3

    :goto_4
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/camera/settings/PictureSizeLoader;->getDisplayableSizes(Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_4

    .line 156
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_3
.end method

.method private getStaticSizeES2(ZI)Ljava/util/List;
    .locals 7
    .param p1, "isBackCamera"    # Z
    .param p2, "aspectRatio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x5e8

    const/16 v5, 0x438

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/16 v4, 0x780

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    if-eqz p1, :cond_2

    .line 247
    if-ne p2, v2, :cond_0

    .line 248
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xfc0

    const/16 v3, 0x7e0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :goto_0
    return-object v0

    .line 249
    :cond_0
    if-ne p2, v1, :cond_1

    .line 250
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xa80

    invoke-direct {v1, v2, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v4, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_1
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x1040

    const/16 v3, 0xc30

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xa00

    invoke-direct {v1, v2, v4}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x800

    const/16 v3, 0x600

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_2
    if-ne p2, v2, :cond_3

    .line 260
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xc60

    const/16 v3, 0x630

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_3
    if-ne p2, v1, :cond_4

    .line 262
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xcc0

    const/16 v3, 0x72c

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xa80

    invoke-direct {v1, v2, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v4, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_4
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xcc0

    const/16 v3, 0x990

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0xa00

    invoke-direct {v1, v2, v4}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x800

    const/16 v3, 0x600

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getStaticSizeFRT(ZI)Ljava/util/List;
    .locals 6
    .param p1, "isBackCamera"    # Z
    .param p2, "aspectRatio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0xa00

    const/16 v4, 0x780

    const/16 v3, 0x500

    const/4 v1, 0x2

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    if-eqz p1, :cond_1

    .line 227
    if-ne p2, v1, :cond_0

    .line 228
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x5a0

    invoke-direct {v1, v5, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x438

    invoke-direct {v1, v4, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    return-object v0

    .line 231
    :cond_0
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v5, v4}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x3c0

    invoke-direct {v1, v3, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    if-ne p2, v1, :cond_2

    .line 236
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x2d0

    invoke-direct {v1, v3, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_2
    new-instance v1, Lcom/android/camera/util/Size;

    const/16 v2, 0x640

    const/16 v3, 0x4b0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private pickSizeFromSupport(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .local p2, "supportsSize":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v3, p1

    .line 221
    :cond_1
    return-object v3

    .line 193
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 195
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/util/Size;

    .line 196
    .local v4, "resultSize":Lcom/android/camera/util/Size;
    const/4 v1, 0x0

    .line 197
    .local v1, "ifPick":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/Size;

    .line 198
    .local v6, "suppSize":Lcom/android/camera/util/Size;
    invoke-virtual {v6, v4}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 199
    const/4 v1, 0x1

    .line 204
    .end local v6    # "suppSize":Lcom/android/camera/util/Size;
    :cond_4
    if-eqz v1, :cond_5

    .line 205
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_5
    const/16 v2, 0x1388

    .line 209
    .local v2, "oldSubmit":I
    move-object v7, v4

    .line 210
    .local v7, "temp":Lcom/android/camera/util/Size;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/Size;

    .line 211
    .restart local v6    # "suppSize":Lcom/android/camera/util/Size;
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->height()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int v5, v9, v10

    .line 212
    .local v5, "submit":I
    if-ge v5, v2, :cond_6

    .line 213
    move-object v7, v6

    .line 214
    move v2, v5

    goto :goto_2

    .line 217
    .end local v5    # "submit":I
    .end local v6    # "suppSize":Lcom/android/camera/util/Size;
    :cond_7
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public computePictureSizes()Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;
    .locals 6

    .prologue
    .line 114
    invoke-static {}, Lcom/android/camera/settings/AppUpgrader;->getSettingOptionMode()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "resolutionMode":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    invoke-direct {p0, v5, v2}, Lcom/android/camera/settings/PictureSizeLoader;->computeSizesForCamera(Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "backCameraSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    sget-object v5, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_FRONT:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    invoke-direct {p0, v5, v2}, Lcom/android/camera/settings/PictureSizeLoader;->computeSizesForCamera(Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, "frontCameraSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    sget-object v5, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_BACK:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    invoke-direct {p0, v5, v2}, Lcom/android/camera/settings/PictureSizeLoader;->computeQualitiesForCamera(Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 124
    .local v3, "videoQualitiesBack":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;>;"
    sget-object v5, Lcom/android/camera/settings/SettingsUtil;->CAMERA_FACING_FRONT:Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;

    invoke-direct {p0, v5, v2}, Lcom/android/camera/settings/PictureSizeLoader;->computeQualitiesForCamera(Lcom/android/camera/settings/SettingsUtil$CameraDeviceSelector;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 126
    .local v4, "videoQualitiesFront":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;>;"
    new-instance v5, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    return-object v5
.end method

.method public getDisplayableSizes(Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p2, "isBackCamera"    # Z
    .param p3, "resolutionMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "supportSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const-string v1, "static_frt"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-direct {p0, p2, v2}, Lcom/android/camera/settings/PictureSizeLoader;->getStaticSizeFRT(ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/settings/PictureSizeLoader;->pickSizeFromSupport(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-direct {p0, p2, v3}, Lcom/android/camera/settings/PictureSizeLoader;->getStaticSizeFRT(ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/settings/PictureSizeLoader;->pickSizeFromSupport(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :cond_1
    const-string v1, "static_es2"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-direct {p0, p2, v2}, Lcom/android/camera/settings/PictureSizeLoader;->getStaticSizeES2(ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/settings/PictureSizeLoader;->pickSizeFromSupport(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-direct {p0, p2, v3}, Lcom/android/camera/settings/PictureSizeLoader;->getStaticSizeES2(ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/settings/PictureSizeLoader;->pickSizeFromSupport(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    const/4 v1, 0x3

    invoke-direct {p0, p2, v1}, Lcom/android/camera/settings/PictureSizeLoader;->getStaticSizeES2(ZI)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/camera/settings/PictureSizeLoader;->pickSizeFromSupport(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
