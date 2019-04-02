.class public Lcom/android/camera/product_utils/ProductUtil$Video;
.super Ljava/lang/Object;
.source "ProductUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/product_utils/ProductUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# static fields
.field public static final EXTRA_QUALITY_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getExtraVideoQualityMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/camera/product_utils/ProductUtil$Video;->EXTRA_QUALITY_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
