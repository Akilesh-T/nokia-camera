.class public Lcom/android/camera/processing/ProcessingTask$ProcessingResult;
.super Ljava/lang/Object;
.source "ProcessingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/ProcessingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessingResult"
.end annotation


# instance fields
.field public final mSession:Lcom/android/camera/session/CaptureSession;

.field public final mSuccess:Z


# direct methods
.method public constructor <init>(ZLcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/android/camera/processing/ProcessingTask$ProcessingResult;->mSuccess:Z

    .line 42
    iput-object p2, p0, Lcom/android/camera/processing/ProcessingTask$ProcessingResult;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 43
    return-void
.end method
