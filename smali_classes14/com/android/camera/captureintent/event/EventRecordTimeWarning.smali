.class public Lcom/android/camera/captureintent/event/EventRecordTimeWarning;
.super Ljava/lang/Object;
.source "EventRecordTimeWarning.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mWarning:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "warning"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/android/camera/captureintent/event/EventRecordTimeWarning;->mWarning:Z

    .line 26
    return-void
.end method


# virtual methods
.method public isWarning()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/camera/captureintent/event/EventRecordTimeWarning;->mWarning:Z

    return v0
.end method
