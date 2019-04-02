.class public abstract Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
.super Ljava/lang/Object;
.source "ExifUtilExtention.java"


# instance fields
.field public mSceneMode:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract appendExifInfo(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .param p1    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
