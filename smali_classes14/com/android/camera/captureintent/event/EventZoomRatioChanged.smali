.class public Lcom/android/camera/captureintent/event/EventZoomRatioChanged;
.super Ljava/lang/Object;
.source "EventZoomRatioChanged.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mZoomRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "zoomRatio"    # F

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/android/camera/captureintent/event/EventZoomRatioChanged;->mZoomRatio:F

    .line 26
    return-void
.end method


# virtual methods
.method public getZoomRatio()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/camera/captureintent/event/EventZoomRatioChanged;->mZoomRatio:F

    return v0
.end method
