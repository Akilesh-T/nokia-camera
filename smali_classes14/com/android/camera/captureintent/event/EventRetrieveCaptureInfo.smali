.class public Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;
.super Ljava/lang/Object;
.source "EventRetrieveCaptureInfo.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

.field private mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapturePhotoInfo()Lcom/android/camera/captureintent/CapturePhotoInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

    return-object v0
.end method

.method public getCaptureVideoInfo()Lcom/android/camera/captureintent/CaptureVideoInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

    return-object v0
.end method

.method public setCapturePhotoInfo(Lcom/android/camera/captureintent/CapturePhotoInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/camera/captureintent/CapturePhotoInfo;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->mCapturePhotoInfo:Lcom/android/camera/captureintent/CapturePhotoInfo;

    .line 39
    return-void
.end method

.method public setCaptureVideoInfo(Lcom/android/camera/captureintent/CaptureVideoInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/camera/captureintent/CaptureVideoInfo;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventRetrieveCaptureInfo;->mCaptureVideoInfo:Lcom/android/camera/captureintent/CaptureVideoInfo;

    .line 31
    return-void
.end method
