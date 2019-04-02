.class public Lcom/android/camera/product_utils/ProductUtil$DesignSpec$CaptureIntent;
.super Ljava/lang/Object;
.source "ProductUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/product_utils/ProductUtil$DesignSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureIntent"
.end annotation


# static fields
.field public static final SHOW_CANCEL_BUTTON:Z = false

.field public static final SHOW_VIDEO_RETAKE_BUTTON:Z = true

.field public static final SHOW_VIDEO_REVIEW_BUTTON:Z


# instance fields
.field final synthetic this$0:Lcom/android/camera/product_utils/ProductUtil$DesignSpec;


# direct methods
.method public constructor <init>(Lcom/android/camera/product_utils/ProductUtil$DesignSpec;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/product_utils/ProductUtil$DesignSpec;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$CaptureIntent;->this$0:Lcom/android/camera/product_utils/ProductUtil$DesignSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
