.class public Lcom/android/camera/captureintent/event/EventTapOnShutterButton;
.super Ljava/lang/Object;
.source "EventTapOnShutterButton.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "touchCoordinate"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventTapOnShutterButton;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 27
    return-void
.end method


# virtual methods
.method public getTouchCoordinate()Lcom/android/camera/ui/TouchCoordinate;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventTapOnShutterButton;->mTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    return-object v0
.end method
