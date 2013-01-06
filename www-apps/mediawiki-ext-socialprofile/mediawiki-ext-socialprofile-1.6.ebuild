# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Incorporates a basic social profile into a MediaWiki."
HOMEPAGE="http://www.mediawiki.org/wiki/Extension:SocialProfile"
SRC_URI="https://gerrit.wikimedia.org/r/gitweb?p=mediawiki/extensions/SocialProfile.git;a=snapshot;h=12e4a5821c177a2abb2492d79b12a8d38d2c4f3a;sf=tgz"
SRC_URI="http://intranet.rabe.ch/distfiles/mw-SocialProfile-1.6pre.tar.gz"
S="work/SocialProfile-12e4a58"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="www-apps/mediawiki"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
}

src_install() {
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile
	doins SocialProfile.php
	doins SocialProfile.alias.php
	doins SocialProfile.namespaces.php
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/SystemGifts
	doins SystemGifts/UserSystemGiftsClass.php
	doins SystemGifts/systemgifts.postgres.sql
	doins SystemGifts/SystemGift.i18n.php
	doins SystemGifts/SystemGiftsClass.php
	doins SystemGifts/SystemGift.css
	doins SystemGifts/SpecialPopulateAwards.php
	doins SystemGifts/SpecialSystemGiftManager.php
	doins SystemGifts/SpecialRemoveMasterSystemGift.php
	doins SystemGifts/TopAwards.php
	doins SystemGifts/systemgifts.sql
	doins SystemGifts/SpecialSystemGiftManagerLogo.php
	doins SystemGifts/SpecialViewSystemGifts.php
	doins SystemGifts/SystemGifts.php
	doins SystemGifts/SpecialViewSystemGift.php
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserActivity
	doins UserActivity/UserActivity.php
	doins UserActivity/UserActivityClass.php
	doins UserActivity/UserActivity.i18n.php
	doins UserActivity/UserActivity.body.php
	doins UserActivity/UserActivity.css
	doins UserActivity/SiteActivityHook.php
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserBoard
	doins UserBoard/BoardBlast.js
	doins UserBoard/UserBoard.i18n.php
	doins UserBoard/SpecialSendBoardBlast.php
	doins UserBoard/UserBoard_AjaxFunctions.php
	doins UserBoard/BoardBlast.css
	doins UserBoard/user_board.postgres.sql
	doins UserBoard/UserBoardClass.php
	doins UserBoard/UserBoard.css
	doins UserBoard/SpecialUserBoard.php
	doins UserBoard/UserBoard.js
	doins UserBoard/user_board.sql
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserGifts
	doins UserGifts/UserGiftsClass.php
	doins UserGifts/UserGifts.i18n.php
	doins UserGifts/UserGifts.js
	doins UserGifts/GiftsClass.php
	doins UserGifts/SpecialRemoveGift.php
	doins UserGifts/SpecialGiftManagerLogo.php
	doins UserGifts/SpecialGiftManager.php
	doins UserGifts/usergifts.postgres.sql
	doins UserGifts/UserGifts.css
	doins UserGifts/SpecialViewGift.php
	doins UserGifts/SpecialRemoveMasterGift.php
	doins UserGifts/SpecialGiveGift.php
	doins UserGifts/usergifts.sql
	doins UserGifts/Gifts.php
	doins UserGifts/SpecialViewGifts.php
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserProfile
	doins UserProfile/SpecialToggleUserPageType.php
	doins UserProfile/SpecialUploadAvatar.php
	doins UserProfile/UserProfile.php
	doins UserProfile/SpecialPopulateExistingUsersProfiles.php
	doins UserProfile/user_profile.sql
	doins UserProfile/UserProfile.css
	doins UserProfile/SpecialEditProfile.php
	doins UserProfile/UpdateProfile.js
	doins UserProfile/UserProfilePage.php
	doins UserProfile/SpecialRemoveAvatar.php
	doins UserProfile/AvatarClass.php
	doins UserProfile/UserProfileClass.php
	doins UserProfile/user_profile.postgres.sql
	doins UserProfile/SpecialUpdateProfile.php
	doins UserProfile/UserProfilePage.js
	doins UserProfile/UserProfile.i18n.php
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserRelationship
	doins UserRelationship/SpecialViewRelationships.php
	doins UserRelationship/user_relationship.postgres.sql
	doins UserRelationship/UserRelationship.i18n.php
	doins UserRelationship/UserRelationship.css
	doins UserRelationship/UserRelationshipClass.php
	doins UserRelationship/SpecialViewRelationshipRequests.php
	doins UserRelationship/user_relationship.sql
	doins UserRelationship/UserRelationship.js
	doins UserRelationship/SpecialRemoveRelationship.php
	doins UserRelationship/Relationship_AjaxFunctions.php
	doins UserRelationship/SpecialAddRelationship.php
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserStats
	doins UserStats/TopFansRecent.php
	doins UserStats/UserStatsClass.php
	doins UserStats/TopUsersTag.php
	doins UserStats/user_stats.sql
	doins UserStats/TopList.css
	doins UserStats/EditCount.php
	doins UserStats/SpecialUpdateEditCounts.php
	doins UserStats/UserStats.i18n.php
	doins UserStats/TopUsers.php
	doins UserStats/GenerateTopUsersReport.php
	doins UserStats/TopFansByStat.php
	doins UserStats/user_stats.postgres.sql
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserStatus
	doins UserStatus/SpecialUserStatus.php
	doins UserStatus/UserStatus.css
	doins UserStatus/UserStatus_AjaxFunctions.php
	doins UserStatus/UserStatus.i18n.php
	doins UserStatus/userstatus.sql
	doins UserStatus/INFO
	doins UserStatus/UserStatusClass.php
	doins UserStatus/UserStatus.js
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserSystemMessages
	doins UserSystemMessages/user_system_messages.postgres.sql
	doins UserSystemMessages/UserSystemMessagesClass.php
	doins UserSystemMessages/user_system_messages.sql
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/UserWelcome
	doins UserWelcome/UserWelcome.i18n.php
	doins UserWelcome/UserWelcome.php
	doins UserWelcome/UserWelcome.css
	insinto $(equery f mediawiki | grep extensions$)/SocialProfile/images
	doins images/challengeIcon.png
	doins images/voteIcon.gif
	doins images/awardIcon.png
	doins images/ajax-loader-white.gif
	doins images/icon_package_get.gif
	doins images/emailIcon.gif
	doins images/icon_package.gif
	doins images/editIcon.gif
	doins images/addedFriendIcon.png
	doins images/comment.gif
	doins images/status-corner.png
	doins images/addedFoeIcon.png
	insinto $(equery f mediawiki | grep extensions$)/../images/avatars
	doins avatars/default_m.gif
	doins avatars/README.txt
	doins avatars/default_l.gif
	doins avatars/default_ml.gif
	doins avatars/default_s.gif
	insinto $(equery f mediawiki | grep extensions$)/../images/awards
	doins awards/VotesAward_30000.gif
	doins awards/RecruitAward5.gif
	doins awards/VotesAward_2000.gif
	doins awards/VotesAward_10000.gif
	doins awards/CommentsAward_100.gif
	doins awards/CommentsAward_5.gif
	doins awards/EditsAward_250.gif
	doins awards/FriendsAward_3000.gif
	doins awards/VotesAward_500.gif
	doins awards/EditsAward_50.gif
	doins awards/FriendsAward_750.gif
	doins awards/FriendsAward_2000.gif
	doins awards/CommentsAward_1000.gif
	doins awards/VotesAward_100.gif
	doins awards/CommentsAward_250.gif
	doins awards/EditsAward_8000.gif
	doins awards/VotesAward_250.gif
	doins awards/VotesAward_5000.gif
	doins awards/EditsAward_1000.gif
	doins awards/FriendsAward_50.gif
	doins awards/VotesAward_20000.gif
	doins awards/FriendsAward_1000.gif
	doins awards/EditsAward_100.gif
	doins awards/VotesAward_1000.gif
	doins awards/VotesAward_5.gif
	doins awards/EditsAward_2000.gif
	doins awards/FriendsAward_5000.gif
	doins awards/EditsAward_25.gif
	doins awards/CommentsAward_50.gif
	doins awards/EditsAward_4000.gif
	doins awards/EditsAward_5000.gif
	doins awards/VotesAward_3000.gif
	doins awards/VotesAward_40000.gif
	doins awards/CommentsAward_8000.gif
	doins awards/FriendsAward_500.gif
	doins awards/EditsAward_750.gif
	doins awards/FriendsAward_5.gif
	doins awards/RecruitAward_1.gif
	doins awards/VotesAward_750.gif
	doins awards/FriendsAward_25.gif
	doins awards/CommentsAward_750.gif
	doins awards/EditsAward_500.gif
	doins awards/CommentsAward_5000.gif
	doins awards/FriendsAward_250.gif
	doins awards/CommentsAward_500.gif
	doins awards/FriendsAward_100.gif
	doins awards/CommentsAward_3000.gif
	doins awards/RecruitAward_3.gif
	doins awards/FriendsAward_4000.gif
	doins awards/FriendsAward_8000.gif
	doins awards/CommentsAward_25.gif
	doins awards/CommentsAward_4000.gif
	doins awards/EditsAward_5.gif
	doins awards/EditsAward_3000.gif
	doins awards/CommentsAward_2000.gif
	dodoc README
}
