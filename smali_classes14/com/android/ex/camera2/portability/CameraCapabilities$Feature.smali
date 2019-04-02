.class public final enum Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;
.super Ljava/lang/Enum;
.source "CameraCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum BOKEH:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum BOKEH_MPO:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum CDS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum HDR_1X:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum HFR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum MANUAL_EXPOSURE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum MANUAL_WB:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum OPTI_ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum PIP_CUS_PREVIEW_RATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum PIP_CUS_SIZE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

.field public static final enum ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 447
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "VIDEO_SNAPSHOT"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 451
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "FOCUS_AREA"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 455
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "METERING_AREA"

    invoke-direct {v0, v1, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 459
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "AUTO_EXPOSURE_LOCK"

    invoke-direct {v0, v1, v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 463
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "AUTO_WHITE_BALANCE_LOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 467
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "VIDEO_STABILIZATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 471
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "ZSL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 475
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "METADATA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 479
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "AUTO_HDR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 483
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "BEAUTY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 487
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "OPTI_ZOOM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->OPTI_ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 491
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "LONG_SHOT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 495
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "HW_ROTATE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 499
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "MANUAL_FOCUS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 503
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "MANUAL_EXPOSURE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_EXPOSURE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 507
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "MANUAL_WB"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_WB:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 511
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "SURROUND_SOUND"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 515
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "VIDEO_DIS_STABILIZATION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 519
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "VIDEO_EIS_STABILIZATION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 523
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "METERING"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 527
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "HDR_1X"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HDR_1X:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 531
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "CDS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CDS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 535
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "TOUCH_AF_AEC"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 539
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "BOKEH"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 543
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "BOKEH_MPO"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH_MPO:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 547
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "HFR"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HFR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 551
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "FRONT_CAMERA_MIRROR"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 555
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "PIP_CUS_SIZE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_SIZE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 560
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "PIP_CUS_PREVIEW_RATE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_PREVIEW_RATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 565
    new-instance v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    const-string v1, "CUS_MAX_PREVIEW_RATE_SET"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 439
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->OPTI_ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_EXPOSURE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_WB:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HDR_1X:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CDS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH_MPO:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HFR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_SIZE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_PREVIEW_RATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 439
    const-class v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->$VALUES:[Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    return-object v0
.end method
