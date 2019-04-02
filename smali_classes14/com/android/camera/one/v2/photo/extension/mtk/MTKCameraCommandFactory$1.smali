.class synthetic Lcom/android/camera/one/v2/photo/extension/mtk/MTKCameraCommandFactory$1;
.super Ljava/lang/Object;
.source "MTKCameraCommandFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/extension/mtk/MTKCameraCommandFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$util$ProductModelUtil$DualCamType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil$DualCamType;->values()[Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCameraCommandFactory$1;->$SwitchMap$com$android$camera$util$ProductModelUtil$DualCamType:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCameraCommandFactory$1;->$SwitchMap$com$android$camera$util$ProductModelUtil$DualCamType:[I

    sget-object v1, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    invoke-virtual {v1}, Lcom/android/camera/util/ProductModelUtil$DualCamType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
