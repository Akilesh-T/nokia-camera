.class final Lcom/facebook/appevents/AppEventsLogger$3;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->initializeLib(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Lcom/facebook/appevents/AppEventsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AppEventsLogger;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 450
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, "params":Landroid/os/Bundle;
    :try_start_0
    const-string v1, "com.facebook.core.Core"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 455
    const-string v1, "core_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    .line 458
    :goto_0
    :try_start_1
    const-string v1, "com.facebook.login.Login"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 459
    const-string v1, "login_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 462
    :goto_1
    :try_start_2
    const-string v1, "com.facebook.share.Share"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 463
    const-string v1, "share_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    .line 466
    :goto_2
    :try_start_3
    const-string v1, "com.facebook.places.Places"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 467
    const-string v1, "places_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    .line 470
    :goto_3
    :try_start_4
    const-string v1, "com.facebook.messenger.Messenger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 471
    const-string v1, "messenger_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    .line 474
    :goto_4
    :try_start_5
    const-string v1, "com.facebook.applinks.AppLinks"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 475
    const-string v1, "applinks_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 478
    :goto_5
    :try_start_6
    const-string v1, "com.facebook.marketing.Marketing"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 479
    const-string v1, "marketing_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 482
    :goto_6
    :try_start_7
    const-string v1, "com.facebook.all.All"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 483
    const-string v1, "all_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    .line 488
    :goto_7
    :try_start_8
    const-string v1, "com.android.billingclient.api.BillingClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 489
    const-string v1, "billing_client_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    .line 492
    :goto_8
    :try_start_9
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 493
    const-string v1, "billing_service_lib_included"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_0

    .line 496
    :goto_9
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$3;->val$logger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "fb_sdk_initialize"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 497
    return-void

    .line 494
    :catch_0
    move-exception v1

    goto :goto_9

    .line 490
    :catch_1
    move-exception v1

    goto :goto_8

    .line 484
    :catch_2
    move-exception v1

    goto :goto_7

    .line 480
    :catch_3
    move-exception v1

    goto :goto_6

    .line 476
    :catch_4
    move-exception v1

    goto :goto_5

    .line 472
    :catch_5
    move-exception v1

    goto :goto_4

    .line 468
    :catch_6
    move-exception v1

    goto :goto_3

    .line 464
    :catch_7
    move-exception v1

    goto :goto_2

    .line 460
    :catch_8
    move-exception v1

    goto :goto_1

    .line 456
    :catch_9
    move-exception v1

    goto :goto_0
.end method
