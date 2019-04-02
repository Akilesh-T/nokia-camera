.class public Lcom/android/camera/livebroadcast/AccountConfig;
.super Ljava/lang/Object;
.source "AccountConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z
    .locals 2
    .param p0, "type"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    .line 8
    sget-object v0, Lcom/android/camera/livebroadcast/AccountConfig$1;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$AccountType:[I

    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 10
    :pswitch_0
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;->ENABLE_WEIBO:Z

    goto :goto_0

    .line 12
    :pswitch_1
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;->ENABLE_FACEBOOK:Z

    goto :goto_0

    .line 14
    :pswitch_2
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$LiveBroadcast;->ENABLE_YOUTUBE:Z

    goto :goto_0

    .line 8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
