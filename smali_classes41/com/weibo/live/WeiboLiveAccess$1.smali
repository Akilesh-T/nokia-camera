.class Lcom/weibo/live/WeiboLiveAccess$1;
.super Ljava/lang/Object;
.source "WeiboLiveAccess.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weibo/live/WeiboLiveAccess;->accessLive(Lcom/sina/weibo/sdk/net/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weibo/live/WeiboLiveAccess;

.field private final synthetic val$rListener:Lcom/sina/weibo/sdk/net/RequestListener;


# direct methods
.method constructor <init>(Lcom/weibo/live/WeiboLiveAccess;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    iput-object p2, p0, Lcom/weibo/live/WeiboLiveAccess$1;->val$rListener:Lcom/sina/weibo/sdk/net/RequestListener;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v3, "r":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Lflexjson/JSONDeserializer;

    invoke-direct {v7}, Lflexjson/JSONDeserializer;-><init>()V

    invoke-virtual {v7, p1}, Lflexjson/JSONDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    .line 57
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 69
    :goto_1
    iget-object v7, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v7}, Lcom/weibo/live/WeiboLiveAccess;->access$3(Lcom/weibo/live/WeiboLiveAccess;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 112
    :goto_2
    iget-object v7, p0, Lcom/weibo/live/WeiboLiveAccess$1;->val$rListener:Lcom/sina/weibo/sdk/net/RequestListener;

    iget-object v8, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v8}, Lcom/weibo/live/WeiboLiveAccess;->access$3(Lcom/weibo/live/WeiboLiveAccess;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sina/weibo/sdk/net/RequestListener;->onComplete(Ljava/lang/String;)V

    .line 113
    return-void

    .line 57
    :cond_1
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "status"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    iget-object v9, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/weibo/live/WeiboLiveAccess;->access$0(Lcom/weibo/live/WeiboLiveAccess;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "WeiboLiveAccess"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "scheme_url"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 61
    iget-object v9, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/weibo/live/WeiboLiveAccess;->access$1(Lcom/weibo/live/WeiboLiveAccess;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "auth_code"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    iget-object v9, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/weibo/live/WeiboLiveAccess;->access$2(Lcom/weibo/live/WeiboLiveAccess;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 73
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const-string v7, "WeiboLiveAccess"

    iget-object v8, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v8}, Lcom/weibo/live/WeiboLiveAccess;->access$4(Lcom/weibo/live/WeiboLiveAccess;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :pswitch_1
    :try_start_3
    iget-object v7, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    iget-object v8, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v8}, Lcom/weibo/live/WeiboLiveAccess;->access$5(Lcom/weibo/live/WeiboLiveAccess;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sina.weibo"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/weibo/live/WeiboLiveAccess;->access$6(Lcom/weibo/live/WeiboLiveAccess;Landroid/content/pm/PackageInfo;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 85
    :goto_3
    iget-object v7, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v7}, Lcom/weibo/live/WeiboLiveAccess;->access$7(Lcom/weibo/live/WeiboLiveAccess;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_4

    .line 86
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v6, "urlIntent":Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v7, "http://m.weibo.cn/feature/download/index"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 89
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    iget-object v7, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v7}, Lcom/weibo/live/WeiboLiveAccess;->access$5(Lcom/weibo/live/WeiboLiveAccess;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 82
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "urlIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v7, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/weibo/live/WeiboLiveAccess;->access$6(Lcom/weibo/live/WeiboLiveAccess;Landroid/content/pm/PackageInfo;)V

    goto :goto_3

    .line 92
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v8}, Lcom/weibo/live/WeiboLiveAccess;->access$8(Lcom/weibo/live/WeiboLiveAccess;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .local v4, "schemeIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v7}, Lcom/weibo/live/WeiboLiveAccess;->access$5(Lcom/weibo/live/WeiboLiveAccess;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 101
    .end local v4    # "schemeIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/weibo/live/WeiboLiveAccess$1;->this$0:Lcom/weibo/live/WeiboLiveAccess;

    invoke-static {v8}, Lcom/weibo/live/WeiboLiveAccess;->access$5(Lcom/weibo/live/WeiboLiveAccess;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v8, "\u6b64\u8d26\u53f7\u4e0d\u80fd\u8fdb\u884c\u5fae\u535a\u76f4\u64ad\uff0c\u8bf7\u66f4\u6362\u8d26\u53f7"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 102
    const-string v8, "\u786e\u5b9a"

    new-instance v9, Lcom/weibo/live/WeiboLiveAccess$1$1;

    invoke-direct {v9, p0}, Lcom/weibo/live/WeiboLiveAccess$1$1;-><init>(Lcom/weibo/live/WeiboLiveAccess$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 109
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/weibo/live/WeiboLiveAccess$1;->val$rListener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 117
    return-void
.end method
