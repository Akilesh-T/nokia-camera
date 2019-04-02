.class synthetic Lcom/android/camera/opengl/image/ImageGenerator$1;
.super Ljava/lang/Object;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/image/ImageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$one$DualSightCamType:[I

.field static final synthetic $SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/android/camera/one/DualSightCamType;->values()[Lcom/android/camera/one/DualSightCamType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$one$DualSightCamType:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$one$DualSightCamType:[I

    sget-object v1, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1}, Lcom/android/camera/one/DualSightCamType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$one$DualSightCamType:[I

    sget-object v1, Lcom/android/camera/one/DualSightCamType;->SLAVE:Lcom/android/camera/one/DualSightCamType;

    invoke-virtual {v1}, Lcom/android/camera/one/DualSightCamType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 68
    :goto_1
    invoke-static {}, Lcom/android/camera/opengl/dualsight/DualSightMode;->values()[Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    :try_start_2
    sget-object v0, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/camera/opengl/image/ImageGenerator$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 136
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
