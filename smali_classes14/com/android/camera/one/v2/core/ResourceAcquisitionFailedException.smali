.class public Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
.super Ljava/lang/Exception;
.source "ResourceAcquisitionFailedException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Exception;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
