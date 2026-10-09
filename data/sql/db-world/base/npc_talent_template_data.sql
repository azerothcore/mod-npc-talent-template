-- DATA
SET @ENTRY := 55009;
SET @NAME := 'Pick a spec';
SET @SUBNAME := 'AzerothCore Template';
SET @TEXT := 'Here you can select a character template which will gear up, gem up, set talent specialization, and set glyphs for your character instantly.';
SET @DISPLAY_ID := 24877;

DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `rank`, `unit_class`, `unit_flags`, `type`, `type_flags`, `RegenHealth`, `flags_extra`, `ScriptName`) VALUES(@ENTRY, @NAME, @SUBNAME, 'Speak', 0, 80, 80, 35, 1, 1, 1.14286, 0, 1, 2, 7, 138936390, 1, 2, 'npc_talent_template');

DELETE FROM `creature_template_model` WHERE `CreatureID` = @ENTRY;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@ENTRY, 0, @DISPLAY_ID, 1, 1, 0);

DELETE FROM `npc_text` WHERE `ID` = @ENTRY;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`) VALUES
(@ENTRY, @TEXT, @TEXT);

DELETE FROM `creature_template_movement` WHERE `CreatureId` = @ENTRY;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(@ENTRY, 1, 1, 0, 0, 0, 0, NULL);

-- module string
SET @MODULE_STRING := 'npc-talent-template';
DELETE FROM `module_string` WHERE `module` = @module_string;
INSERT INTO `module_string` (`module`, `id`, `string`) VALUES
(@MODULE_STRING, 1, 'You need to remove all your equipped items in order to use this feature!'),
(@MODULE_STRING, 2, 'You have already spent some talent points. You need to reset your talents first!'),
(@MODULE_STRING, 3, 'Successfully equipped {} {} template!'),
(@MODULE_STRING, 4, 'Your equipped gear has been destroyed.'),
(@MODULE_STRING, 5, 'Your glyphs have been removed.'),
(@MODULE_STRING, 6, 'NYI: Copied character {} successfully'),
(@MODULE_STRING, 7, 'You have unspent talent points. Please spend all your talent points and re-extract the template.'),
(@MODULE_STRING, 8, 'Get glyphs and re-extract the template!'),
(@MODULE_STRING, 9, 'Template successfully created!'),
(@MODULE_STRING, 10, 'Template skeleton successfully created! You can `.templatenpc reload` to test your template. WARNING: Templates need to be manually exported to `.sql`. See documentation for more info.'),
(@MODULE_STRING, 11, 'Reloading templates for Template NPC table...'),
(@MODULE_STRING, 12, 'Template NPC templates reloaded.');

-- module string locales
DELETE FROM `module_string_locale` WHERE `module` = @MODULE_STRING;
INSERT INTO `module_string_locale` (`module`, `id`, `locale`, `string`) VALUES
-- ID 1: MUST_REMOVE_EQUIPPED
(@MODULE_STRING, 1, 'koKR', '이 기능을 사용하려면 장착한 모든 아이템을 제거해야 합니다!'),
(@MODULE_STRING, 1, 'frFR', 'Vous devez retirer tous vos objets équipés pour utiliser cette fonctionnalité !'),
(@MODULE_STRING, 1, 'deDE', 'Du musst alle ausgerüsteten Gegenstände entfernen, um diese Funktion zu nutzen!'),
(@MODULE_STRING, 1, 'zhCN', '您必须卸下所有已装备的物品才能使用此功能！'),
(@MODULE_STRING, 1, 'zhTW', '您必須卸下所有已裝備的物品才能使用此功能！'),
(@MODULE_STRING, 1, 'esES', '¡Debes quitarte todos los objetos equipados para usar esta función!'),
(@MODULE_STRING, 1, 'esMX', '¡Debes quitarte todos los objetos equipados para usar esta función!'),
(@MODULE_STRING, 1, 'ruRU', 'Чтобы воспользоваться этой функцией, снимите все надетые предметы!'),
-- ID 2: MUST_RESET_TALENTS
(@MODULE_STRING, 2, 'koKR', '이미 특성 포인트를 사용했습니다. 먼저 특성을 초기화해야 합니다!'),
(@MODULE_STRING, 2, 'frFR', 'Vous avez déjà dépensé des points de talent. Vous devez d''abord réinitialiser vos talents !'),
(@MODULE_STRING, 2, 'deDE', 'Du hast bereits Talentpunkte ausgegeben. Du musst zuerst deine Talente zurücksetzen!'),
(@MODULE_STRING, 2, 'zhCN', '您已经花费了一些天赋点。您必须先重置您的天赋！'),
(@MODULE_STRING, 2, 'zhTW', '您已經花費了一些天賦點。您必須先重置您的天賦！'),
(@MODULE_STRING, 2, 'esES', 'Ya has gastado algunos puntos de talento. ¡Primero debes restablecer tus talentos!'),
(@MODULE_STRING, 2, 'esMX', 'Ya has gastado algunos puntos de talento. ¡Primero debes restablecer tus talentos!'),
(@MODULE_STRING, 2, 'ruRU', 'Вы уже потратили очки талантов. Сначала нужно сбросить таланты!'),
-- ID 3: EQUIPPED_TEMPLATE
(@MODULE_STRING, 3, 'koKR', '{} {} 템플릿을 성공적으로 장착했습니다!'),
(@MODULE_STRING, 3, 'frFR', 'Modèle {} {} équipé avec succès !'),
(@MODULE_STRING, 3, 'deDE', 'Vorlage {} {} erfolgreich ausgerüstet!'),
(@MODULE_STRING, 3, 'zhCN', '成功装备了 {} {} 模板！'),
(@MODULE_STRING, 3, 'zhTW', '成功裝備了 {} {} 範本！'),
(@MODULE_STRING, 3, 'esES', '¡Plantilla {} {} equipada con éxito!'),
(@MODULE_STRING, 3, 'esMX', '¡Plantilla {} {} equipada con éxito!'),
(@MODULE_STRING, 3, 'ruRU', 'Шаблон {} {} успешно применён!'),
-- ID 4: DESTROYED_EQUIPPED_GEAR
(@MODULE_STRING, 4, 'koKR', '장착한 장비가 파괴되었습니다.'),
(@MODULE_STRING, 4, 'frFR', 'Votre équipement porté a été détruit.'),
(@MODULE_STRING, 4, 'deDE', 'Deine ausgerüstete Ausrüstung wurde zerstört.'),
(@MODULE_STRING, 4, 'zhCN', '您已装备的装备已被摧毁。'),
(@MODULE_STRING, 4, 'zhTW', '您已裝備的裝備已被摧毀。'),
(@MODULE_STRING, 4, 'esES', 'Tu equipo equipado ha sido destruido.'),
(@MODULE_STRING, 4, 'esMX', 'Tu equipo equipado ha sido destruido.'),
(@MODULE_STRING, 4, 'ruRU', 'Ваша надетая экипировка уничтожена.'),
-- ID 5: REMOVED_GLYPHS
(@MODULE_STRING, 5, 'koKR', '문양이 제거되었습니다.'),
(@MODULE_STRING, 5, 'frFR', 'Vos glyphes ont été retirés.'),
(@MODULE_STRING, 5, 'deDE', 'Deine Glyphen wurden entfernt.'),
(@MODULE_STRING, 5, 'zhCN', '您的雕文已被移除。'),
(@MODULE_STRING, 5, 'zhTW', '您的雕紋已被移除。'),
(@MODULE_STRING, 5, 'esES', 'Tus glifos han sido eliminados.'),
(@MODULE_STRING, 5, 'esMX', 'Tus glifos han sido eliminados.'),
(@MODULE_STRING, 5, 'ruRU', 'Ваши символы удалены.'),
-- ID 6: COPIED
(@MODULE_STRING, 6, 'koKR', 'NYI: {} 캐릭터를 성공적으로 복사했습니다'),
(@MODULE_STRING, 6, 'frFR', 'NYI : Personnage {} copié avec succès'),
(@MODULE_STRING, 6, 'deDE', 'NYI: Charakter {} erfolgreich kopiert'),
(@MODULE_STRING, 6, 'zhCN', 'NYI：成功复制了角色 {}'),
(@MODULE_STRING, 6, 'zhTW', 'NYI：成功複製了角色 {}'),
(@MODULE_STRING, 6, 'esES', 'NYI: Personaje {} copiado con éxito'),
(@MODULE_STRING, 6, 'esMX', 'NYI: Personaje {} copiado con éxito'),
(@MODULE_STRING, 6, 'ruRU', 'NYI: Персонаж {} успешно скопирован'),
-- ID 7: EXTRACT_MUST_SPEND_ALL_TALENT_POINTS
(@MODULE_STRING, 7, 'koKR', '사용하지 않은 특성 포인트가 있습니다. 모든 특성 포인트를 사용한 후 템플릿을 다시 추출하세요.'),
(@MODULE_STRING, 7, 'frFR', 'Vous avez des points de talent non dépensés. Veuillez dépenser tous vos points de talent et réextraire le modèle.'),
(@MODULE_STRING, 7, 'deDE', 'Du hast nicht ausgegebene Talentpunkte. Bitte gib alle Talentpunkte aus und extrahiere die Vorlage erneut.'),
(@MODULE_STRING, 7, 'zhCN', '您有未使用的天赋点。请花完所有天赋点并重新提取模板。'),
(@MODULE_STRING, 7, 'zhTW', '您有未使用的天賦點。請花完所有天賦點並重新提取範本。'),
(@MODULE_STRING, 7, 'esES', 'Tienes puntos de talento sin gastar. Gasta todos tus puntos de talento y vuelve a extraer la plantilla.'),
(@MODULE_STRING, 7, 'esMX', 'Tienes puntos de talento sin gastar. Gasta todos tus puntos de talento y vuelve a extraer la plantilla.'),
(@MODULE_STRING, 7, 'ruRU', 'У вас есть неизрасходованные очки талантов. Потратьте все очки талантов и извлеките шаблон заново.'),
-- ID 8: EXTRACT_GET_GLYPHS
(@MODULE_STRING, 8, 'koKR', '문양을 장착하고 템플릿을 다시 추출하세요!'),
(@MODULE_STRING, 8, 'frFR', 'Obtenez des glyphes et réextrayez le modèle !'),
(@MODULE_STRING, 8, 'deDE', 'Hole dir Glyphen und extrahiere die Vorlage erneut!'),
(@MODULE_STRING, 8, 'zhCN', '获取雕文并重新提取模板！'),
(@MODULE_STRING, 8, 'zhTW', '取得雕紋並重新提取範本！'),
(@MODULE_STRING, 8, 'esES', '¡Consigue glifos y vuelve a extraer la plantilla!'),
(@MODULE_STRING, 8, 'esMX', '¡Consigue glifos y vuelve a extraer la plantilla!'),
(@MODULE_STRING, 8, 'ruRU', 'Получите символы и извлеките шаблон заново!'),
-- ID 9: EXTRACT
(@MODULE_STRING, 9, 'koKR', '템플릿이 성공적으로 생성되었습니다!'),
(@MODULE_STRING, 9, 'frFR', 'Modèle créé avec succès !'),
(@MODULE_STRING, 9, 'deDE', 'Vorlage erfolgreich erstellt!'),
(@MODULE_STRING, 9, 'zhCN', '模板创建成功！'),
(@MODULE_STRING, 9, 'zhTW', '範本建立成功！'),
(@MODULE_STRING, 9, 'esES', '¡Plantilla creada con éxito!'),
(@MODULE_STRING, 9, 'esMX', '¡Plantilla creada con éxito!'),
(@MODULE_STRING, 9, 'ruRU', 'Шаблон успешно создан!'),
-- ID 10: EXTRACT_INFO
(@MODULE_STRING, 10, 'koKR', '템플릿 뼈대가 성공적으로 생성되었습니다! `.templatenpc reload`를 사용하여 템플릿을 테스트할 수 있습니다. 경고: 템플릿은 수동으로 `.sql`로 내보내야 합니다. 자세한 내용은 설명서를 참조하세요.'),
(@MODULE_STRING, 10, 'frFR', 'Squelette de modèle créé avec succès ! Vous pouvez utiliser `.templatenpc reload` pour tester votre modèle. AVERTISSEMENT : les modèles doivent être exportés manuellement vers `.sql`. Consultez la documentation pour plus d''informations.'),
(@MODULE_STRING, 10, 'deDE', 'Vorlagengerüst erfolgreich erstellt! Du kannst `.templatenpc reload` verwenden, um deine Vorlage zu testen. WARNUNG: Vorlagen müssen manuell nach `.sql` exportiert werden. Weitere Informationen findest du in der Dokumentation.'),
(@MODULE_STRING, 10, 'zhCN', '模板骨架创建成功！您可以使用 `.templatenpc reload` 来测试您的模板。警告：模板需要手动导出为 `.sql`。更多信息请参阅文档。'),
(@MODULE_STRING, 10, 'zhTW', '範本骨架建立成功！您可以使用 `.templatenpc reload` 來測試您的範本。警告：範本需要手動匯出為 `.sql`。更多資訊請參閱文件。'),
(@MODULE_STRING, 10, 'esES', '¡Esqueleto de plantilla creado con éxito! Puedes usar `.templatenpc reload` para probar tu plantilla. ADVERTENCIA: las plantillas deben exportarse manualmente a `.sql`. Consulta la documentación para más información.'),
(@MODULE_STRING, 10, 'esMX', '¡Esqueleto de plantilla creado con éxito! Puedes usar `.templatenpc reload` para probar tu plantilla. ADVERTENCIA: las plantillas deben exportarse manualmente a `.sql`. Consulta la documentación para más información.'),
(@MODULE_STRING, 10, 'ruRU', 'Каркас шаблона успешно создан! Вы можете использовать `.templatenpc reload` для проверки шаблона. ВНИМАНИЕ: шаблоны необходимо вручную экспортировать в `.sql`. Дополнительную информацию см. в документации.'),
-- ID 11: RELOADING
(@MODULE_STRING, 11, 'koKR', 'Template NPC 테이블의 템플릿을 다시 불러오는 중...'),
(@MODULE_STRING, 11, 'frFR', 'Rechargement des modèles pour la table Template NPC...'),
(@MODULE_STRING, 11, 'deDE', 'Vorlagen für die Template-NPC-Tabelle werden neu geladen...'),
(@MODULE_STRING, 11, 'zhCN', '正在重新加载 Template NPC 表的模板...'),
(@MODULE_STRING, 11, 'zhTW', '正在重新載入 Template NPC 表的範本...'),
(@MODULE_STRING, 11, 'esES', 'Recargando plantillas para la tabla Template NPC...'),
(@MODULE_STRING, 11, 'esMX', 'Recargando plantillas para la tabla Template NPC...'),
(@MODULE_STRING, 11, 'ruRU', 'Перезагрузка шаблонов для таблицы Template NPC...'),
-- ID 12: RELOADED
(@MODULE_STRING, 12, 'koKR', 'Template NPC 템플릿을 다시 불러왔습니다.'),
(@MODULE_STRING, 12, 'frFR', 'Modèles de Template NPC rechargés.'),
(@MODULE_STRING, 12, 'deDE', 'Template-NPC-Vorlagen neu geladen.'),
(@MODULE_STRING, 12, 'zhCN', 'Template NPC 模板已重新加载。'),
(@MODULE_STRING, 12, 'zhTW', 'Template NPC 範本已重新載入。'),
(@MODULE_STRING, 12, 'esES', 'Plantillas de Template NPC recargadas.'),
(@MODULE_STRING, 12, 'esMX', 'Plantillas de Template NPC recargadas.'),
(@MODULE_STRING, 12, 'ruRU', 'Шаблоны Template NPC перезагружены.');
