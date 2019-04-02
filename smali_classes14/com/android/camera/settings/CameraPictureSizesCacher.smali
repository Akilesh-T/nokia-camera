.class public Lcom/android/camera/settings/CameraPictureSizesCacher;
.super Ljava/lang/Object;
.source "CameraPictureSizesCacher.java"


# static fields
.field private static final PICTURE_SIZES_BUILD_KEY:Ljava/lang/String; = "CachedSupportedPictureSizes_Build_Camera"

.field private static final PICTURE_SIZES_SIZES_KEY:Ljava/lang/String; = "CachedSupportedPictureSizes_Sizes_Camera"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedSizesForCamera(ILandroid/content/Context;)Lcom/google/common/base/Optional;
    .locals 8
    .param p0, "cameraId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CachedSupportedPictureSizes_Build_Camera"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "key_build":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CachedSupportedPictureSizes_Sizes_Camera"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "key_sizes":Ljava/lang/String;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, "defaultPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "thisCameraCachedBuild":Ljava/lang/String;
    if-eqz v3, :cond_0

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "thisCameraCachedSizeList":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 148
    invoke-static {v4}, Lcom/android/camera/util/Size;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 151
    .end local v4    # "thisCameraCachedSizeList":Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    goto :goto_0
.end method

.method public static getSizesForCamera(ILandroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "cameraId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/android/camera/settings/CameraPictureSizesCacher;->getCachedSizesForCamera(ILandroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 81
    .local v0, "cachedSizes":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/util/List<Lcom/android/camera/util/Size;>;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 127
    :goto_0
    return-object v9

    .line 85
    :cond_0
    const/4 v7, 0x0

    .line 86
    .local v7, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 88
    :try_start_0
    invoke-static {}, Lcom/android/camera/one/OneCameraModule;->provideOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v9

    invoke-static {p0}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    .line 89
    .local v1, "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    if-eqz v1, :cond_1

    .line 90
    const/16 v9, 0x100

    invoke-interface {v1, v9}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/one/OneCameraException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 117
    .end local v1    # "cameraCharacteristics":Lcom/android/camera/one/OneCameraCharacteristics;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CachedSupportedPictureSizes_Build_Camera"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "key_build":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CachedSupportedPictureSizes_Sizes_Camera"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "key_sizes":Ljava/lang/String;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 121
    .local v2, "defaultPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 122
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-static {v7}, Lcom/android/camera/util/Size;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .end local v2    # "defaultPrefs":Landroid/content/SharedPreferences;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "key_build":Ljava/lang/String;
    .end local v6    # "key_sizes":Ljava/lang/String;
    :cond_2
    move-object v9, v7

    .line 127
    goto :goto_0

    .line 92
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Lcom/android/camera/one/OneCameraAccessException;
    invoke-virtual {v3}, Lcom/android/camera/one/OneCameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v3    # "e":Lcom/android/camera/one/OneCameraAccessException;
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Lcom/android/camera/one/OneCameraException;
    invoke-virtual {v3}, Lcom/android/camera/one/OneCameraException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v3    # "e":Lcom/android/camera/one/OneCameraException;
    :cond_3
    const/4 v8, 0x0

    .line 101
    .local v8, "thisCamera":Landroid/hardware/Camera;
    :try_start_1
    invoke-static {p0}, Lcom/android/ex/camera2/portability/extension/CameraDeviceOpenerUtil;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v8

    .line 102
    if-eqz v8, :cond_4

    .line 103
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 104
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v9

    .line 103
    invoke-static {v9}, Lcom/android/camera/util/Size;->buildListFromCameraSizes(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 111
    :cond_4
    if-eqz v8, :cond_1

    .line 112
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    goto :goto_1

    .line 106
    :catch_2
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v8, :cond_1

    .line 112
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    goto :goto_1

    .line 111
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_5

    .line 112
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    :cond_5
    throw v9
.end method

.method public static updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CachedSupportedPictureSizes_Build_Camera"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "key_build":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "defaultPrefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "thisCameraCachedBuild":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CachedSupportedPictureSizes_Sizes_Camera"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "key_sizes":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 62
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-static {p2}, Lcom/android/camera/util/Size;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "key_sizes":Ljava/lang/String;
    :cond_0
    return-void
.end method
