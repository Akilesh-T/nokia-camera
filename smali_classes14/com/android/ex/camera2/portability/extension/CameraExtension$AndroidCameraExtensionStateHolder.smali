.class public Lcom/android/ex/camera2/portability/extension/CameraExtension$AndroidCameraExtensionStateHolder;
.super Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;
.source "CameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/CameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AndroidCameraExtensionStateHolder"
.end annotation


# static fields
.field public static final CAMERA_EXTENSION_CAPTURING_BEAUTY:I = 0x80

.field public static final CAMERA_EXTENSION_CAPTURING_BOKEH:I = 0x40

.field public static final CAMERA_EXTENSION_CAPTURING_BURST:I = 0x2

.field public static final CAMERA_EXTENSION_CAPTURING_DENOISE:I = 0x10

.field public static final CAMERA_EXTENSION_CAPTURING_HDR:I = 0x8

.field public static final CAMERA_EXTENSION_CAPTURING_LOWLIGHT:I = 0x20

.field public static final CAMERA_EXTENSION_CAPTURING_PANORAMA:I = 0x4

.field public static final CAMERA_EXTENSION_IDLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;-><init>(I)V

    .line 35
    return-void
.end method
