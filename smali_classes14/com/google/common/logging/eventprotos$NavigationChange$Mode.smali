.class public Lcom/google/common/logging/eventprotos$NavigationChange$Mode;
.super Ljava/lang/Object;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/eventprotos$NavigationChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mode"
.end annotation


# static fields
.field public static final BOKEH_MODE:I = 0x7

.field public static final BURST_SHOT_MODE:I = 0x4

.field public static final DUAL_SIGHT_MODE:I = 0x5

.field public static final Dual_SIGHT_VIDEO_MODE:I = 0x2

.field public static final FACE_EFFECT_ANIMOJI:I = 0x2

.field public static final FACE_EFFECT_IN_DUAL_SIGHT_MODE:I = 0x2

.field public static final FACE_EFFECT_IN_Dual_SIGHT_VIDEO_MODE:I = 0x6

.field public static final FACE_EFFECT_IN_PHOTO_MODE:I = 0x1

.field public static final FACE_EFFECT_IN_PIP_MODE:I = 0x3

.field public static final FACE_EFFECT_IN_PIP_VIDEO_MODE:I = 0x7

.field public static final FACE_EFFECT_IN_SQUARE_MODE:I = 0x4

.field public static final FACE_EFFECT_IN_VIDEO_MODE:I = 0x5

.field public static final FACE_EFFECT_LIGHTENING:I = 0x3

.field public static final FACE_EFFECT_STICKER:I = 0x1

.field public static final FILMSTRIP:I = 0x2710

.field public static final GALLERY:I = 0x2710

.field public static final HDR_PLUS:I = 0x2710

.field public static final LENS_BLUR:I = 0x2710

.field public static final MOTION_MODE:I = 0xb

.field public static final NONE:I = -0x1

.field public static final PANORAMA_MODE:I = 0x3

.field public static final PHOTO_CAPTURE:I = 0x2710

.field public static final PHOTO_MODE:I = 0x1

.field public static final PHOTO_SPHERE:I = 0x2710

.field public static final PIP_MODE:I = 0x6

.field public static final PIP_VIDEO_MODE:I = 0x3

.field public static final PRO_MANUAL_MODE:I = 0x9

.field public static final SINGLE_BOKEH_MODE:I = 0x8

.field public static final SLOW_MOTION_MODE:I = 0x5

.field public static final SQUARE_MODE:I = 0xc

.field public static final TIME_LAPSE_MODE:I = 0x4

.field public static final UNKNOWN_MODE:I = 0x2710

.field public static final VIDEO_CAPTURE:I = 0x2710

.field public static final VIDEO_MODE:I = 0x1

.field public static final VIDEO_SANP_SHOT:I = 0xa

.field public static final VIDEO_STILL:I = 0x2710


# instance fields
.field final synthetic this$1:Lcom/google/common/logging/eventprotos$NavigationChange;


# direct methods
.method public constructor <init>(Lcom/google/common/logging/eventprotos$NavigationChange;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/logging/eventprotos$NavigationChange;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/common/logging/eventprotos$NavigationChange$Mode;->this$1:Lcom/google/common/logging/eventprotos$NavigationChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
