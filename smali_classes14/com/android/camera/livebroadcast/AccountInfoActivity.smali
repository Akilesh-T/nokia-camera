.class public Lcom/android/camera/livebroadcast/AccountInfoActivity;
.super Landroid/preference/PreferenceActivity;
.source "AccountInfoActivity.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "ACCOUNT_TYPE"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]InfoActivity"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/AccountInfoActivity;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/AccountInfoActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    return-object v0
.end method

.method private initPreferences()V
    .locals 9

    .prologue
    .line 64
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraServicesImpl;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v1

    .line 65
    .local v1, "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    if-nez v1, :cond_1

    .line 66
    sget-object v6, Lcom/android/camera/livebroadcast/AccountInfoActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "The LiveBroadcastManager is not created. Skip initPreferences!"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v6, "prefscreen_top"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 71
    .local v3, "top":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_2

    .line 72
    iget-object v6, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    sget-object v7, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    if-ne v6, v7, :cond_3

    .line 73
    const-string v6, "pref_live_broadcast_account_weibo"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    const-string v6, "pref_live_broadcast_account_weibo_privacy"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    const-string v6, "pref_live_broadcast_account_youtube"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    const-string v6, "pref_live_broadcast_account_youtube_privacy"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    const-string v6, "pref_live_broadcast_account_facebook"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 78
    .local v0, "facebook":Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 79
    sget-object v6, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    .end local v0    # "facebook":Landroid/preference/Preference;
    :cond_2
    :goto_1
    const-string v6, "pref_live_broadcast_logout"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/settings/LogoutDialogPreference;

    .line 107
    .local v2, "logout":Lcom/android/camera/settings/LogoutDialogPreference;
    if-eqz v2, :cond_0

    .line 108
    new-instance v6, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;

    invoke-direct {v6, p0, v1}, Lcom/android/camera/livebroadcast/AccountInfoActivity$1;-><init>(Lcom/android/camera/livebroadcast/AccountInfoActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager;)V

    invoke-virtual {v2, v6}, Lcom/android/camera/settings/LogoutDialogPreference;->setListener(Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;)V

    goto :goto_0

    .line 81
    .end local v2    # "logout":Lcom/android/camera/settings/LogoutDialogPreference;
    :cond_3
    iget-object v6, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    sget-object v7, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    if-ne v6, v7, :cond_4

    .line 82
    const-string v6, "pref_live_broadcast_account_facebook"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    const-string v6, "pref_live_broadcast_account_facebook_privacy"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    const-string v6, "pref_live_broadcast_account_youtube"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    const-string v6, "pref_live_broadcast_account_youtube_privacy"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    const-string v6, "pref_live_broadcast_account_weibo"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 87
    .local v4, "weibo":Landroid/preference/Preference;
    if-eqz v4, :cond_2

    .line 88
    sget-object v6, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 90
    .end local v4    # "weibo":Landroid/preference/Preference;
    :cond_4
    iget-object v6, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    sget-object v7, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    if-ne v6, v7, :cond_5

    .line 91
    const-string v6, "pref_live_broadcast_account_weibo"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    const-string v6, "pref_live_broadcast_account_weibo_privacy"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    const-string v6, "pref_live_broadcast_account_facebook"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    const-string v6, "pref_live_broadcast_account_facebook_privacy"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    const-string v6, "pref_live_broadcast_account_youtube"

    invoke-virtual {p0, v6}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 96
    .local v5, "youtube":Landroid/preference/Preference;
    if-eqz v5, :cond_2

    .line 97
    sget-object v6, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1, v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 100
    .end local v5    # "youtube":Landroid/preference/Preference;
    :cond_5
    sget-object v6, Lcom/android/camera/livebroadcast/AccountInfoActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknow account type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 30
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ACCOUNT_TYPE"

    sget-object v4, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, "type":I
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 34
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iput-object v2, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 35
    const v2, 0x7f080319

    invoke-virtual {p0, v2}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->addPreferencesFromResource(I)V

    .line 49
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->initPreferences()V

    .line 50
    :goto_1
    return-void

    .line 36
    :cond_0
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 37
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->FACEBOOK:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iput-object v2, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 38
    const v2, 0x7f0803f4

    invoke-virtual {p0, v2}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 39
    :cond_1
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 40
    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->YOUTUBE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    iput-object v2, p0, Lcom/android/camera/livebroadcast/AccountInfoActivity;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 41
    const v2, 0x7f0803fc

    invoke-virtual {p0, v2}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    :cond_2
    sget-object v2, Lcom/android/camera/livebroadcast/AccountInfoActivity;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknow account type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->finish()V

    goto :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 55
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/AccountInfoActivity;->finish()V

    .line 59
    :cond_0
    return v2
.end method
