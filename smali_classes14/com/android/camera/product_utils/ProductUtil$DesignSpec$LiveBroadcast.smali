.class public Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;
.super Ljava/lang/Object;
.source "ProductUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/product_utils/ProductUtil$DesignSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveBroadcast"
.end annotation


# static fields
.field public static final ENABLE_FACEBOOK:Z

.field public static final ENABLE_WEIBO:Z

.field public static final ENABLE_YOUTUBE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqCNLiveBroadcast()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;->ENABLE_WEIBO:Z

    .line 168
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqWWLiveBroadcast()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;->ENABLE_FACEBOOK:Z

    .line 169
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqWWLiveBroadcast()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;->ENABLE_YOUTUBE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
