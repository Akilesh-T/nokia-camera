.class public Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;
.super Ljava/lang/Object;
.source "ProductUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/product_utils/ProductUtil$DesignSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode"
.end annotation


# static fields
.field public static final ENABLE_PRO_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqManualMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqProModeUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
