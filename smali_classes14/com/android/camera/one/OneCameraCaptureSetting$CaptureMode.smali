.class public final enum Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
.super Ljava/lang/Enum;
.source "OneCameraCaptureSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCameraCaptureSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum PHOTO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum PHOTO_UW:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field public static final enum VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 96
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "PHOTO_CAPTURE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 97
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "BEAUTY"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 98
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 99
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "PANORAMA"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 100
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "BOKEH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 101
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "DUAL_SIGHT_PHOTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 102
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "DUAL_SIGHT_VIDEO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 103
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "DUAL_SIGHT_VIDEO_BROADCAST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 104
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "VIDEO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 105
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "VIDEO_BROADCAST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 106
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "VIDEO_CAPTURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 107
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "SLOW_MOTION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 108
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "TIME_LAPSE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 109
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "PHOTO_MICRO_VIDEO"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 110
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "EFFECT_VIDEO"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 111
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "EFFECT_PHOTO"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 112
    new-instance v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    const-string v1, "PHOTO_UW"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_UW:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 94
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_UW:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->$VALUES:[Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromFlag(I)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    packed-switch p0, :pswitch_data_0

    .line 153
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_6
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_7
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_8
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_9
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_a
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_b
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_c
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_d
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_e
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_f
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_10
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_11
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_UW:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getMicroVideoPreviewFps()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->supportFixedFpsForMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/android/camera/one/OneCameraCaptureSetting;->access$000()Landroid/util/Range;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/one/OneCameraCaptureSetting;->access$100()Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method public static isBeautyAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 3
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 245
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useVendorBeautyForPreview()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 246
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBokehBeauty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 262
    :cond_1
    :goto_0
    return v0

    .line 253
    :cond_2
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v2, :cond_3

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v2, :cond_3

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 257
    :cond_4
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBokehBeauty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 258
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v2, :cond_5

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v2, :cond_5

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 262
    :cond_6
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v2, :cond_7

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v2, :cond_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public static isBurstShotNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConstrainedHighSpeedSessionNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 308
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_CHS_SESSION:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 159
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 164
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableEIS(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    .line 343
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFaceDetectAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 284
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFocusPointInfoNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHDRAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiveBroadcastMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 223
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 269
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedSceneUpdateIQParmeter(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 2
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isNeedSceneRecognition()Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRawCaptureAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 240
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReprocessSessionNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 2
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 297
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->USE_REPROCESS:Z

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSceneNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 2
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isNeedSceneRecognition()Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSlaveReprocessSessionNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public static isSurroundSoundAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 279
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTorchAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTouchAeAdjAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZSLNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needCapture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_CAPTURE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needChangeStreamOpreationMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 351
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    .line 356
    :cond_0
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needJpegThumbnail(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needLockPreviewFps(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 184
    invoke-static {p0}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isVideoMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useJpegPicture(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z
    .locals 1
    .param p0, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 205
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO_MICRO_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->$VALUES:[Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    return-object v0
.end method
