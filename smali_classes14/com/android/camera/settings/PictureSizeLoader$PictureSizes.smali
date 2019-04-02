.class public Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;
.super Ljava/lang/Object;
.source "PictureSizeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/settings/PictureSizeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureSizes"
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field public final backCameraSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final frontCameraSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final videoQualitiesBack:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;",
            ">;"
        }
    .end annotation
.end field

.field public final videoQualitiesFront:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    .locals 0
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
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "backCameraSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .local p2, "frontCameraSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .local p3, "videoQualitiesBack":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;>;"
    .local p4, "videoQualitiesFront":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->backCameraSizes:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->frontCameraSizes:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->videoQualitiesBack:Lcom/google/common/base/Optional;

    .line 62
    iput-object p4, p0, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;->videoQualitiesFront:Lcom/google/common/base/Optional;

    .line 63
    return-void
.end method
