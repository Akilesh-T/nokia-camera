.class public Lcom/android/camera/livebroadcast/v2/streaming/RtmpConst$AudioParam;
.super Ljava/lang/Object;
.source "RtmpConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/v2/streaming/RtmpConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioParam"
.end annotation


# static fields
.field public static BIT_RATE:I

.field public static SAMPLE_RATE:I

.field public static STEREO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/high16 v0, 0x20000

    sput v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConst$AudioParam;->BIT_RATE:I

    .line 7
    const v0, 0xac44

    sput v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConst$AudioParam;->SAMPLE_RATE:I

    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConst$AudioParam;->STEREO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
