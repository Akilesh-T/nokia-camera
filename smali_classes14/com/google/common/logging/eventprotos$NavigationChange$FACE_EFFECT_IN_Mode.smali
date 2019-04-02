.class public Lcom/google/common/logging/eventprotos$NavigationChange$FACE_EFFECT_IN_Mode;
.super Ljava/lang/Object;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/eventprotos$NavigationChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FACE_EFFECT_IN_Mode"
.end annotation


# static fields
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


# instance fields
.field final synthetic this$1:Lcom/google/common/logging/eventprotos$NavigationChange;


# direct methods
.method public constructor <init>(Lcom/google/common/logging/eventprotos$NavigationChange;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/logging/eventprotos$NavigationChange;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/common/logging/eventprotos$NavigationChange$FACE_EFFECT_IN_Mode;->this$1:Lcom/google/common/logging/eventprotos$NavigationChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
