.class public Lcom/android/camera/util/config/ProductConfigCreator;
.super Ljava/lang/Object;
.source "ProductConfigCreator.java"


# static fields
.field private static final BUILD_PRODUCT:Ljava/lang/String;

.field private static final MODEL_NUM:Ljava/lang/String;

.field private static final PERSIST_BUILD_PRODUCT:Ljava/lang/String; = "ro.build.product"

.field private static final PERSIST_PRODUCT_NODEL_NUM:Ljava/lang/String; = "ro.product.model.num"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "ro.product.model.num"

    const-string v1, "000F"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/config/ProductConfigCreator;->MODEL_NUM:Ljava/lang/String;

    .line 10
    const-string v0, "ro.build.product"

    const-string v1, "UNKNOW"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create()Lcom/android/camera/util/config/ProductConfig;
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lcom/android/camera/util/config/ProductConfig;

    sget-object v1, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/util/config/ProductConfigCreator;->MODEL_NUM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/config/ProductConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .local v0, "config":Lcom/android/camera/util/config/ProductConfig;
    sget-object v2, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 42
    :goto_1
    return-object v0

    .line 14
    :sswitch_0
    const-string v3, "PNX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "NB1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "RHD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "EAG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "ROO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "TAS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/android/camera/util/config/PNXConfig;

    .end local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    sget-object v1, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/util/config/ProductConfigCreator;->MODEL_NUM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/config/PNXConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .restart local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    goto :goto_1

    .line 20
    :pswitch_1
    new-instance v0, Lcom/android/camera/util/config/NB1Config;

    .end local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    sget-object v1, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/util/config/ProductConfigCreator;->MODEL_NUM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/config/NB1Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .restart local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    goto :goto_1

    .line 25
    :pswitch_2
    new-instance v0, Lcom/android/camera/util/config/RHDConfig;

    .end local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    sget-object v1, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/util/config/ProductConfigCreator;->MODEL_NUM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/config/RHDConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .restart local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    goto :goto_1

    .line 28
    :pswitch_3
    new-instance v0, Lcom/android/camera/util/config/EAGConfig;

    .end local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    sget-object v1, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/util/config/ProductConfigCreator;->MODEL_NUM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/config/EAGConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .restart local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    goto :goto_1

    .line 32
    :pswitch_4
    new-instance v0, Lcom/android/camera/util/config/ROOConfig;

    .end local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    sget-object v1, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/util/config/ProductConfigCreator;->MODEL_NUM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/config/ROOConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .restart local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    goto :goto_1

    .line 36
    :pswitch_5
    new-instance v0, Lcom/android/camera/util/config/TASConfig;

    .end local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    sget-object v1, Lcom/android/camera/util/config/ProductConfigCreator;->BUILD_PRODUCT:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/util/config/ProductConfigCreator;->MODEL_NUM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/config/TASConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .restart local v0    # "config":Lcom/android/camera/util/config/ProductConfig;
    goto :goto_1

    .line 14
    nop

    :sswitch_data_0
    .sparse-switch
        0x10b2b -> :sswitch_3
        0x12cfd -> :sswitch_1
        0x1361a -> :sswitch_0
        0x13cce -> :sswitch_2
        0x13db2 -> :sswitch_4
        0x14386 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
