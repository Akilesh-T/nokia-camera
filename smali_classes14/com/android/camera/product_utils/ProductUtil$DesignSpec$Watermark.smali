.class public Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Watermark;
.super Ljava/lang/Object;
.source "ProductUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/product_utils/ProductUtil$DesignSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Watermark"
.end annotation


# static fields
.field public static final ENABLE_TENCENT_POI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isNeedCheckNetwork()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Watermark;->ENABLE_TENCENT_POI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
