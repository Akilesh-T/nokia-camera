.class public final Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;
.super Ljava/lang/Object;
.source "CaptureLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionConfiguration"
.end annotation


# instance fields
.field public mBottomBarOverlay:Z

.field public final mBottomBarRect:Landroid/graphics/RectF;

.field public mLargeScreen:Z

.field public mNavigationBarBlack:Z

.field public final mPreviewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mPreviewRect:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarRect:Landroid/graphics/RectF;

    .line 79
    iput-boolean v1, p0, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mBottomBarOverlay:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mLargeScreen:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/camera/CaptureLayoutHelper$PositionConfiguration;->mNavigationBarBlack:Z

    return-void
.end method
