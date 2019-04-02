.class public Lcom/android/camera/captureintent/CaptureIntentConfig;
.super Ljava/lang/Object;
.source "CaptureIntentConfig.java"


# static fields
.field public static final DOWN_SAMPLE_FACTOR:I = 0x4

.field public static final INLINE_BITMAP_MAX_PIXEL_NUM:I = 0xc800

.field public static final WORKAROUND_PREVIEW_STRETCH_BUG_NEXUS4:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/captureintent/CaptureIntentConfig;->WORKAROUND_PREVIEW_STRETCH_BUG_NEXUS4:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
