.class public final Lcom/android/camera/device/CameraOpenException;
.super Ljava/lang/Exception;
.source "CameraOpenException.java"


# instance fields
.field private final mErrorId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorId"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/camera/device/CameraOpenException;->mErrorId:I

    .line 28
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/device/CameraOpenException;->mErrorId:I

    return v0
.end method
