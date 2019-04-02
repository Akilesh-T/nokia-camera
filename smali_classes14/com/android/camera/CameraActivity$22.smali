.class Lcom/android/camera/CameraActivity$22;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 3106
    iput-object p1, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/CameraActivity;->access$5702(Lcom/android/camera/CameraActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3110
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3208
    :goto_0
    return-void

    .line 3111
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v2, "mDoResumeDelayTask running"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3112
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/stats/profiler/Profiler;

    move-result-object v0

    const-string v2, "mDoResumeDelayTask"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    .line 3113
    .local v9, "guard":Lcom/android/camera/stats/profiler/Profile;
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/camera/CameraActivity$22$1;

    invoke-direct {v2, p0, v9}, Lcom/android/camera/CameraActivity$22$1;-><init>(Lcom/android/camera/CameraActivity$22;Lcom/android/camera/stats/profiler/Profile;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3127
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/StorageStateManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3128
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/StorageStateManager;

    iget-object v3, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$5100(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/StorageStateManager;-><init>(Lcom/android/camera/CameraActivity;Landroid/os/Handler;Lcom/android/camera/settings/SettingsManager;)V

    invoke-static {v0, v2}, Lcom/android/camera/CameraActivity;->access$5802(Lcom/android/camera/CameraActivity;Lcom/android/camera/StorageStateManager;)Lcom/android/camera/StorageStateManager;

    .line 3129
    const-string v0, "StorageStateManager init"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3130
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/StorageStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/StorageStateManager;->addListener(Lcom/android/camera/StorageStateManager$StorageStateChangeListener;)V

    .line 3131
    const-string v0, "add StorageState Listener"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3133
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/StorageStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/StorageStateManager;->resume()V

    .line 3134
    const-string v0, "StorageStateManager resume"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3135
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5900(Lcom/android/camera/CameraActivity;)Lcom/android/camera/PowerStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PowerStateManager;->resume()V

    .line 3136
    const-string v0, "mPowerStateManager resume"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3137
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$6000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/PhoneStateManager;->resume()V

    .line 3138
    const-string v0, "mPhoneStateManager resume"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3141
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    .line 3142
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 3143
    .local v10, "locationRecordingEnabled":Z
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$6100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/camera/app/LocationManager;->recordLocation(Z)V

    .line 3144
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5100(Lcom/android/camera/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/camera/CameraActivity$22$2;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$22$2;-><init>(Lcom/android/camera/CameraActivity$22;)V

    const-wide/32 v4, 0x9c40

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3158
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$4700(Lcom/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/CameraActivity;->access$6202(Lcom/android/camera/CameraActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 3159
    const-string v0, "get GalleryIntent"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3161
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/util/ReleaseHelper;->showReleaseInfoDialogOnStart(Landroid/app/Activity;Lcom/android/camera/settings/SettingsManager;)V

    .line 3162
    const-string v0, "show ReleaseInfo Dialog OnStart"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3168
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 3169
    .local v8, "action":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 3170
    const/16 v1, 0x2710

    .line 3202
    .local v1, "source":I
    :goto_1
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$2400(Lcom/android/camera/CameraActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    .line 3203
    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$6300(Lcom/android/camera/CameraActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$6400(Lcom/android/camera/CameraActivity;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    .line 3204
    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$6500(Lcom/android/camera/CameraActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v6}, Lcom/android/camera/CameraActivity;->access$6600(Lcom/android/camera/CameraActivity;)J

    move-result-wide v6

    .line 3202
    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/stats/UsageStatistics;->foregrounded(IIZZZJ)V

    .line 3205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsageStatistics - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3206
    const-string v0, "done"

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 3207
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v2, "mDoResumeDelayTask end"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3172
    .end local v1    # "source":I
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_3
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 3198
    const/16 v1, 0x2710

    .restart local v1    # "source":I
    goto :goto_1

    .line 3172
    .end local v1    # "source":I
    :sswitch_0
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_5
    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_6
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x6

    goto :goto_2

    .line 3174
    :pswitch_0
    const/16 v1, 0x2710

    .line 3175
    .restart local v1    # "source":I
    goto/16 :goto_1

    .line 3178
    .end local v1    # "source":I
    :pswitch_1
    const/16 v1, 0x2710

    .line 3179
    .restart local v1    # "source":I
    goto/16 :goto_1

    .line 3182
    .end local v1    # "source":I
    :pswitch_2
    const/16 v1, 0x2710

    .line 3183
    .restart local v1    # "source":I
    goto/16 :goto_1

    .line 3185
    .end local v1    # "source":I
    :pswitch_3
    const/16 v1, 0x2710

    .line 3186
    .restart local v1    # "source":I
    goto/16 :goto_1

    .line 3189
    .end local v1    # "source":I
    :pswitch_4
    const/16 v1, 0x2710

    .line 3190
    .restart local v1    # "source":I
    goto/16 :goto_1

    .line 3192
    .end local v1    # "source":I
    :pswitch_5
    const/16 v1, 0x2710

    .line 3193
    .restart local v1    # "source":I
    goto/16 :goto_1

    .line 3195
    .end local v1    # "source":I
    :pswitch_6
    const/16 v1, 0x2710

    .line 3196
    .restart local v1    # "source":I
    goto/16 :goto_1

    .line 3172
    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_0
        -0x62d863dd -> :sswitch_5
        -0x45f16402 -> :sswitch_6
        0x1ba9c1af -> :sswitch_1
        0x1cf71807 -> :sswitch_4
        0x29c9b033 -> :sswitch_3
        0x43680478 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
