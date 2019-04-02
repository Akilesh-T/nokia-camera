.class public Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;
.super Ljava/lang/Object;
.source "EventTimerCountDownToZero.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mCaptureLoggingInfo:Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;


# direct methods
.method public constructor <init>(Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
    .locals 0
    .param p1, "captureLoggingInfo"    # Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;->mCaptureLoggingInfo:Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public getCaptureLoggingInfo()Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventTimerCountDownToZero;->mCaptureLoggingInfo:Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;

    return-object v0
.end method
