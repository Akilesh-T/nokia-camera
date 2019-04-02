.class public Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;
.super Ljava/lang/Object;
.source "ProductUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/product_utils/ProductUtil$DesignSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndicatorBar"
.end annotation


# static fields
.field public static final HIDE_WHEN_MODE_LIST_SHOWED:Z = true

.field public static final SHOW_CAMERA_SCREEN:Z = true

.field public static final SHOW_DUAL_CAMERA:Z = false

.field public static final SHOW_EFFECT:Z

.field public static final SHOW_GRID_LINES:Z = false

.field public static final SHOW_LIVE_BROADCAST:Z

.field public static final SHOW_MODE_SETTINGS:Z = true

.field public static final SHOW_SOUND_FOCUS:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqWWLiveBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqCNLiveBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_LIVE_BROADCAST:Z

    .line 138
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqEffect()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    return-void

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
