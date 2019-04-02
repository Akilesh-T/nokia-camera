.class public Lcom/android/camera/OZO/OZOConst$AudioParam;
.super Ljava/lang/Object;
.source "OZOConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/OZO/OZOConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioParam"
.end annotation


# static fields
.field public static BIT_RATE:I = 0x0

.field public static BUFFER_SIZE:I = 0x0

.field public static final FRAMES_PER_BUFFER:I = 0x19

.field public static final SAMPLES_PER_FRAME:I = 0x400

.field public static SAMPLE_RATE:I

.field public static STEREO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const v0, 0x1f400

    sput v0, Lcom/android/camera/OZO/OZOConst$AudioParam;->BIT_RATE:I

    .line 10
    const v0, 0xbb80

    sput v0, Lcom/android/camera/OZO/OZOConst$AudioParam;->SAMPLE_RATE:I

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/OZO/OZOConst$AudioParam;->STEREO:Z

    .line 14
    const/16 v0, 0x6400

    sput v0, Lcom/android/camera/OZO/OZOConst$AudioParam;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
