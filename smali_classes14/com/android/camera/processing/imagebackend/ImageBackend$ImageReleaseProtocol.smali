.class public Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;
.super Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;
.source "ImageBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageReleaseProtocol"
.end annotation


# instance fields
.field public final blockUntilRelease:Z

.field public final closeOnRelease:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .param p1, "block"    # Z
    .param p2, "close"    # Z

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/android/camera/processing/imagebackend/ImageBackend$BlockSignalProtocol;-><init>()V

    .line 956
    iput-boolean p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->blockUntilRelease:Z

    .line 957
    iput-boolean p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$ImageReleaseProtocol;->closeOnRelease:Z

    .line 958
    return-void
.end method
