.class public Lcom/android/camera/product_utils/ProductUtil$DesignSpec$SettingsOptions;
.super Ljava/lang/Object;
.source "ProductUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/product_utils/ProductUtil$DesignSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsOptions"
.end annotation


# static fields
.field public static final CUSTOMIZED_RESOLUTION_SIZE_IN_CHINESE:Z = true

.field public static final ENABLE_GRID_LINES:Z = true

.field public static final ENABLE_MULTI_LAYER_TITLE:Z = true

.field public static final SHOW_INFORMATION_BUTTON:Z = true


# instance fields
.field final synthetic this$0:Lcom/android/camera/product_utils/ProductUtil$DesignSpec;


# direct methods
.method public constructor <init>(Lcom/android/camera/product_utils/ProductUtil$DesignSpec;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/product_utils/ProductUtil$DesignSpec;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$SettingsOptions;->this$0:Lcom/android/camera/product_utils/ProductUtil$DesignSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
