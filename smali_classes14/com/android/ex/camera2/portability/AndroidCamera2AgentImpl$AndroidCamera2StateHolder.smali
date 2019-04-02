.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2StateHolder;
.super Lcom/android/ex/camera2/portability/CameraStateHolder;
.source "AndroidCamera2AgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCamera2StateHolder"
.end annotation


# static fields
.field public static final CAMERA_CONFIGURED:I = 0x4

.field public static final CAMERA_FOCUS_LOCKED:I = 0x20

.field public static final CAMERA_PREVIEW_ACTIVE:I = 0x10

.field public static final CAMERA_PREVIEW_READY:I = 0x8

.field public static final CAMERA_UNCONFIGURED:I = 0x2

.field public static final CAMERA_UNOPENED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2StateHolder;-><init>(I)V

    .line 1326
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1329
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraStateHolder;-><init>(I)V

    .line 1330
    return-void
.end method
