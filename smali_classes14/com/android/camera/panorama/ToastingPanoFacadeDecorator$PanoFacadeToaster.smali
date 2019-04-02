.class public Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;
.super Ljava/lang/Object;
.source "ToastingPanoFacadeDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoFacadeToaster"
.end annotation


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/camera/CameraActivity;
    .param p3, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;->mActivity:Lcom/android/camera/CameraActivity;

    .line 48
    return-void
.end method


# virtual methods
.method public showToastBurstStarted()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public showToastBurstStopped()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
