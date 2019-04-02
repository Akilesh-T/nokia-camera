.class public Lcom/laifeng/sopcastsdk/camera/CameraData;
.super Ljava/lang/Object;
.source "CameraData.java"


# static fields
.field public static final FACING_BACK:I = 0x2

.field public static final FACING_FRONT:I = 0x1


# instance fields
.field public cameraFacing:I

.field public cameraHeight:I

.field public cameraID:I

.field public cameraWidth:I

.field public hasLight:Z

.field public orientation:I

.field public supportTouchFocus:Z

.field public touchFocusMode:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "facing"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraID:I

    .line 35
    iput p2, p0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraFacing:I

    .line 36
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "facing"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraID:I

    .line 28
    iput p2, p0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraFacing:I

    .line 29
    iput p3, p0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraWidth:I

    .line 30
    iput p4, p0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraHeight:I

    .line 31
    return-void
.end method
